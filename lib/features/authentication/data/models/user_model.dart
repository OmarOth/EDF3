// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:edf3/utils/enums/user_enum.dart';

class UserModel extends Equatable {
  final String userName;
  final String email;
  final String? userID;
  final UserTypeEnum userType;
  final String civilID;

  const UserModel({
    required this.userName,
    required this.email,
    required this.userID,
    required this.userType,
    required this.civilID,
  });

  @override
  List<Object> get props {
    return [
      userName,
      email,
      userType,
      civilID,
    ];
  }

  UserModel copyWith({
    String? userName,
    String? email,
    String? userID,
    UserTypeEnum? userType,
    String? civilID,
  }) {
    return UserModel(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      userID: userID ?? this.userID,
      userType: userType ?? this.userType,
      civilID: civilID ?? this.civilID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'email': email,
      'userID': userID,
      'userType': userType.toMap(),
      'civilID': civilID,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userName: map['userName'] as String,
      email: map['email'] as String,
      userID: map['userID'] != null ? map['userID'] as String : null,
      userType: UserTypeEnum.fromMap(map['userType'] as String),
      civilID: map['civilID'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  String toString() {
    return "email : $email, username: $userName, userID : $userID, UserType : $userType";
  }

  UserEntity toEntity() => UserEntity(
        userName: userName,
        email: email,
        userID: userID,
        userType: userType,
        civilID: civilID,
      );
}
