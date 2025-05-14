import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:qbitter/constants/endpoints.dart';
import 'package:qbitter/helpers/failure.dart';
import 'package:qbitter/helpers/network.dart';
import 'package:qbitter/helpers/types.dart';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:qbitter/models/server.dart';
import 'package:qbitter/providers/socket.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:qbitter/providers/storage.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  Future<Either<Failure, Server>> build() async {
    final storage = ref.read(storageProvider);
    final serverJson = await storage.read(key: "SERVER");
    final socket = ref.read(socketProvider);

    if (serverJson != null) {
      final server = Server.fromJson(jsonDecode(serverJson));

      final Map<String, String> requestHeaders = {
        "Content-Type": "application/json",
      };

      try {
        final response = await post(
            Uri.parse("${server.url}/${Endpoints.tokenCheck}"),
            body: jsonEncode({"token": server.token}),
            headers: requestHeaders);

        if (response.statusCode >= 400) {
          final error = jsonDecode(response.body);
          if (kDebugMode) {
            print("HTTP error: ${error["message"]}");
          }
          return Left(Failure(message: "Session Expired"));
        }

        final check = jsonDecode(response.body);

        if (!check["valid"]) {
          return Left(Failure(message: "Token not valid"));
        }
        socket.init(server.url);
        return Right(server);
      } catch (e, stktrc) {
        return Left(Failure(message: e.toString(), stackTrace: stktrc));
      }
    } else {
      return Left(Failure(message: "Server definition not found"));
    }
  }

  Future<Either<Failure, String>> getServerUrl() async {
    final storage = ref.read(storageProvider);
    final serverJson = await storage.read(key: "SERVER");

    if (serverJson != null) {
      final server = Server.fromJson(jsonDecode(serverJson));

      return Right(server.url);
    } else {
      return Left(Failure(message: "Server definition not found"));
    }
  }

  Future<void> setServer(Server server) async {
    final storage = ref.read(storageProvider);
    await storage.write(key: "SERVER", value: jsonEncode(server.toJson()));

    state = AsyncValue.data(Right(server));
  }

  Future<void> logout() async {
    final socket = ref.read(socketProvider);
    socket.close();
    final storage = ref.read(storageProvider);
    await storage.delete(key: "SERVER");
    state = AsyncValue.data(Left(Failure(message: "logged out...")));
  }
}

class AuthRepo {
  static FutureEither<Server> login(
      String server, String password, NetworkRepo network) async {
    try {
      if (server.isEmpty) {
        return Left(Failure(message: "Server not defined"));
      }

      if (password.isEmpty) {
        return Left(Failure(message: "Password not defined"));
      }

      if (server.endsWith("/")) {
        server = server.substring(0, server.length - 1);
      }

      server = server.toLowerCase();

      final result = await network.postRequest(
          url: "$server/${Endpoints.loginEndpoint}",
          body: {"server": server, "password": password},
          requireAuth: false);

      return switch (result) {
        Left(value: final l) => Left(Failure(message: l.message)),
        Right(value: final r) => r.statusCode >= 400
            ? Left(Failure(message: String.fromCharCodes(r.bodyBytes)))
            : Right(Server.fromJson(jsonDecode(r.body) as Map<String, dynamic>))
      };
    } catch (e, stktrc) {
      return Left(Failure(
          message: "Could not Login: ${e.toString()}", stackTrace: stktrc));
    }
  }
}
