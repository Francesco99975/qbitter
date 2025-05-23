import 'package:fpdart/fpdart.dart';
import 'package:qbitter/helpers/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureEitherVoid = Future<Either<Failure, void>>;
typedef FutureVoid = Future<void>;
