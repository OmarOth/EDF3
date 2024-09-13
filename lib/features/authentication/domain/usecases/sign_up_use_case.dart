import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:edf3/features/authentication/domain/repositories/auth_repo.dart';
import 'package:edf3/utils/type_def/types_def.dart';
import 'package:edf3/utils/usecase.dart';

class SignUpUseCase
    implements UsecaseWithParams<UserEntity, SignUpUseCaseParams> {
  final AuthRepo repo;

  SignUpUseCase({required this.repo});

  @override
  ResultFuture<UserEntity> call(SignUpUseCaseParams useCaseParams) async =>
      await repo.signUp(
        email: useCaseParams.email,
        userName: useCaseParams.userName,
        civilID: useCaseParams.civilID,
      );
}

class SignUpUseCaseParams {
  final String userName;
  final String email;
  final String civilID;

  SignUpUseCaseParams({
    required this.userName,
    required this.email,
    required this.civilID,
  });
}
