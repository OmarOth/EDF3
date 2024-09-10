import 'dart:convert';

import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String userName;
  final String email;
  final String userID;

  const UserModel({
    required this.userName,
    required this.email,
    required this.userID,
  });

  @override
  List<Object> get props => [userName, email, userID];

  UserModel copyWith({
    String? userName,
    String? email,
    String? userID,
  }) {
    return UserModel(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      userID: userID ?? this.userID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'email': email,
      'userID': userID,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userName: map['userName'] as String,
      email: map['email'] as String,
      userID: map['userID'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  String toString() {
    return "email : $email, username: $userName, userID : $userID";
  }

  UserEntity toEntity() => UserEntity(
        userName: userName,
        email: email,
        userID: userID,
      );
}
