import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:qbitter/helpers/failure.dart';

Either<Failure, dynamic> decodeBody(String body) {
  try {
    final json = jsonDecode(body);
    return Right(json);
  } catch (e) {
    return Left(Failure(message: e.toString()));
  }
}
