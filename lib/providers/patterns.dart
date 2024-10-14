import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:qbitter/constants/endpoints.dart';
import 'package:qbitter/helpers/failure.dart';
import 'package:qbitter/helpers/network.dart';
import 'package:qbitter/models/pattern.dart';

part 'patterns.g.dart';

@riverpod
class Patterns extends _$Patterns {
  @override
  Future<Either<Failure, List<Pattern>>> build() async {
    final network = ref.read(networkProvider);

    return network.match((l) => Left(l), (network) async {
      final response = await network.getRequest(
        url: Endpoints.patternEndpoint,
      );

      return response.match((l) => Left(l), (r) {
        final List<dynamic> data = jsonDecode(r.body);
        return Right((data.map((e) => Pattern.fromJson(e)).toList()));
      });
    });
  }

  Future<Either<Failure, Pattern>> add(Pattern pattern) async {
    final network = ref.read(networkProvider);

    return network.match((l) => Left(l), (network) async {
      final response = await network.postRequest(
          url: Endpoints.patternEndpoint,
          body: pattern.toJson(),
          multipart: true);

      return response.match((l) => Left(l), (r) {
        final List<dynamic> data = jsonDecode(r.body);
        final updatedState = (data.map((e) => Pattern.fromJson(e)).toList());
        state = AsyncValue.data(Right(updatedState));
        return Right(updatedState.last);
      });
    });
  }

  Future<Either<Failure, Pattern>> updateProduct(Pattern pattern) async {
    final network = ref.read(networkProvider);

    return network.match((l) => Left(l), (network) async {
      final response = await network.putRequest(
          url: "${Endpoints.patternEndpoint}/${pattern.id}",
          body: pattern.toJson(),
          multipart: true);

      return response.match((l) => Left(l), (r) {
        final List<dynamic> data = jsonDecode(r.body);
        final updatedState = (data.map((e) => Pattern.fromJson(e)).toList());
        state = AsyncValue.data(Right(updatedState));
        return Right(updatedState.last);
      });
    });
  }

  Future<Either<Failure, Pattern>> remove(Pattern pattern) async {
    final network = ref.read(networkProvider);

    return network.match((l) => Left(l), (network) async {
      final response = await network.deleteRequest(
          url: "${Endpoints.patternEndpoint}/${pattern.id}");

      return response.match((l) => Left(l), (r) {
        final List<dynamic> data = jsonDecode(r.body);
        final updatedState = (data.map((e) => Pattern.fromJson(e)).toList());
        state = AsyncValue.data(Right(updatedState));
        return Right(pattern);
      });
    });
  }
}
