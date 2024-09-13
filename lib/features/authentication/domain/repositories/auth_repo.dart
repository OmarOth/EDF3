import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:edf3/utils/type_def/types_def.dart';

abstract class AuthRepo {
  ResultFuture<UserEntity> signIn({required String email});
  ResultFuture<UserEntity> signUp({
    required String email,
    required String userName,
    required String civilID,
  });
}
