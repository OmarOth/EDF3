import 'package:dartz/dartz.dart';
import 'package:edf3/utils/fail.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultFuture<void>;
