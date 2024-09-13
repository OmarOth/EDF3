import 'package:dio/dio.dart';
import 'package:edf3/features/authentication/data/models/user_model.dart';
import 'package:edf3/utils/enums/user_enum.dart';
import 'package:flutter/material.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signIn({required String email});
  Future<UserModel> signUp({
    required String email,
    required String userName,
    required String civilID,
  });
}

class AuthRemoteDataSourceIMPL implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceIMPL({required this.dio});
  @override
  Future<UserModel> signIn({required String email}) async {
    return UserModel(
      userName: "Omar",
      email: email,
      userID: "996999",
      userType: UserTypeEnum.authenticated,
      civilID: '6999005',
    );
  }

  @override
  Future<UserModel> signUp({
    required String email,
    required String userName,
    required String civilID,
  }) async {
    /**
     * call back end, ensure sign up worked correctly, return new user data
     */
    debugPrint("Signed up!");

    return UserModel(
      userName: userName,
      email: email,
      userID: '889911',
      userType: UserTypeEnum.authenticated,
      civilID: civilID,
    );
  }
}
