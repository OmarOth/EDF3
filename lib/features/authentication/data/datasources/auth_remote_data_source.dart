import 'package:dio/dio.dart';
import 'package:edf3/features/authentication/data/models/user_model.dart';
import 'package:flutter/material.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signIn({required String email});
  Future<void> signUp({required String email, required String userName});
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
    );
  }

  @override
  Future<void> signUp({required String email, required String userName}) async {
    debugPrint("Signed up!");
  }
}
