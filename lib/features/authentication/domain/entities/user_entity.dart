import 'package:edf3/features/authentication/data/models/user_model.dart';
import 'package:edf3/utils/enums/user_enum.dart';
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userName;
  final String email;
  final String civilID;
  final String? userID;
  final UserTypeEnum userType;

  const UserEntity({
    required this.userName,
    required this.email,
    required this.userType,
    required this.civilID,
    this.userID,
  });

  static const UserEntity guest = UserEntity(
    userName: 'Guest',
    email: "Guest@Guest.com",
    userID: '011233kguest',
    userType: UserTypeEnum.guest,
    civilID: 'guest',
  );

  static const UserEntity notAuthenticated = UserEntity(
    userName: '-',
    email: '-',
    userID: '-',
    userType: UserTypeEnum.notAuthenticated,
    civilID: '-',
  );

  @override
  List<Object?> get props => [
        userName,
        email,
      ];

  UserModel toModel() => UserModel(
        userName: userName,
        email: email,
        userID: userID,
        userType: userType,
        civilID: civilID,
      );
}
