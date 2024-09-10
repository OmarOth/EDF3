import 'package:edf3/features/authentication/data/models/user_model.dart';
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userName;
  final String email;
  final String userID;

  const UserEntity({
    required this.userName,
    required this.email,
    required this.userID,
  });

  @override
  List<Object?> get props => [
        userName,
        email,
      ];

  UserModel toModel() => UserModel(
        userName: userName,
        email: email,
        userID: userID,
      );
}
