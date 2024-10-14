import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:qbitter/constants/endpoints.dart';
import 'package:qbitter/helpers/failure.dart';
import 'package:qbitter/helpers/network.dart';
import 'package:qbitter/helpers/types.dart';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:qbitter/providers/storage.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  Future<Either<Failure, String>> build() async {
    final storage = ref.read(storageProvider);
    final token = await storage.read(key: "TOKEN");

    if (token != null) {
      final Map<String, String> requestHeaders = {
        "Content-Type": "application/json",
      };

      try {
        final response = await post(Uri.parse(Endpoints.tokenCheck),
            body: jsonEncode({"token": token}), headers: requestHeaders);

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

        return Right(token);
      } catch (e, stktrc) {
        return Left(Failure(message: e.toString(), stackTrace: stktrc));
      }
    } else {
      return Left(Failure(message: "User not found"));
    }
  }

  Future<void> setToken(String token) async {
    final storage = ref.read(storageProvider);
    await storage.write(key: "TOKEN", value: token);

    state = AsyncValue.data(Right(token));
  }

  Future<void> logout() async {
    final storage = ref.read(storageProvider);
    await storage.delete(key: "TOKEN");
    state = AsyncValue.data(Left(Failure(message: "logged out...")));
  }
}

class AuthRepo {
  static FutureEither<String> login(
      String email, String password, NetworkRepo network) async {
    try {
      final result = await network.postRequest(
          url: Endpoints.loginEndpoint,
          body: {"email": email, "password": password},
          requireAuth: false);

      return switch (result) {
        Left(value: final l) => Left(Failure(message: l.message)),
        Right(value: final r) => r.statusCode >= 400
            ? Left(Failure(message: String.fromCharCodes(r.bodyBytes)))
            : Right((jsonDecode(r.body) as Map<String, dynamic>)["token"])
      };
    } catch (e, stktrc) {
      return Left(Failure(
          message: "Could not Login: ${e.toString()}", stackTrace: stktrc));
    }
  }
}
