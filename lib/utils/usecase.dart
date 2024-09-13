import 'package:edf3/utils/type_def/types_def.dart';

abstract class UsecaseWithParams<T, UseCaseParams> {
  const UsecaseWithParams();
  ResultFuture<T> call(UseCaseParams useCaseParams);
}

abstract class UsecaseWithoutParams<T> {
  const UsecaseWithoutParams();
  ResultFuture<T> call();
}
