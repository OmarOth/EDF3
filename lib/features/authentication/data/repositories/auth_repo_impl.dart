import 'package:dartz/dartz.dart';
import 'package:edf3/features/authentication/data/datasources/auth_remote_data_source.dart';
import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:edf3/features/authentication/domain/repositories/auth_repo.dart';
import 'package:edf3/utils/usecase.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource dataSource;

  AuthRepoImpl({required this.dataSource});

  @override
  ResultFuture<UserEntity> signIn({required String email}) async {
    return Right((await dataSource.signIn(email: email)).toEntity());
  }

  @override
  ResultFuture<void> signUp({
    required String email,
    required String userName,
  }) async {
    return Right(
      await dataSource.signUp(
        email: email,
        userName: userName,
      ),
    );
  }
}
