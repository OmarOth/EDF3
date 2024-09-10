import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:edf3/utils/usecase.dart';

abstract class AuthRepo {
  ResultFuture<UserEntity> signIn({required String email});
  ResultFuture<void> signUp({required String email, required String userName});
}
