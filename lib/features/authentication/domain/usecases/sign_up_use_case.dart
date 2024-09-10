import 'package:edf3/features/authentication/domain/repositories/auth_repo.dart';
import 'package:edf3/utils/usecase.dart';

class SignUpUseCase implements UsecaseWithParams<void, SignUpUseCaseParams> {
  final AuthRepo repo;

  SignUpUseCase({required this.repo});

  @override
  ResultFuture<void> call(SignUpUseCaseParams useCaseParams) async =>
      await repo.signUp(
        email: useCaseParams.email,
        userName: useCaseParams.userName,
      );
}

sealed class SignUpUseCaseParams {
  final String userName;
  final String email;

  SignUpUseCaseParams({required this.userName, required this.email});
}
