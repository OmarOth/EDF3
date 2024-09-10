import 'package:dartz/dartz.dart';
import 'package:edf3/utils/fail.dart';

abstract class UsecaseWithParams<T, UseCaseParams> {
  const UsecaseWithParams();
  ResultFuture<T> call(UseCaseParams useCaseParams);
}

abstract class UsecaseWithoutParams<T> {
  const UsecaseWithoutParams();
  ResultFuture<T> call();
}

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultFuture<void>;
