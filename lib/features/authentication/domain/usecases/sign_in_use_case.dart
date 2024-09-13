import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:edf3/features/authentication/domain/repositories/auth_repo.dart';
import 'package:edf3/utils/type_def/types_def.dart';
import 'package:edf3/utils/usecase.dart';

class SignInUseCase
    implements UsecaseWithParams<UserEntity, SignInUseCaseParams> {
  final AuthRepo repo;

  const SignInUseCase({required this.repo});

  @override
  ResultFuture<UserEntity> call(SignInUseCaseParams useCaseParams) async =>
      await repo.signIn(email: useCaseParams.email);
}

class SignInUseCaseParams {
  final String email;

  SignInUseCaseParams({required this.email});
}
