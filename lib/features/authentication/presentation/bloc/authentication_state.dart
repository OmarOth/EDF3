part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  final UserEntity user;
  const AuthenticationState({this.user = UserEntity.notAuthenticated});

  @override
  List<Object> get props => [user];
}

class AuthenticationInitialState extends AuthenticationState {
  const AuthenticationInitialState({super.user = UserEntity.notAuthenticated});
}

class AuthenticationLoadingState extends AuthenticationState {
  const AuthenticationLoadingState({super.user = UserEntity.notAuthenticated});
}

class AuthenticationSuccessState extends AuthenticationState {
  final UserEntity newUser;
  const AuthenticationSuccessState({required this.newUser})
      : super(user: newUser);
}

class AuthenticationFailState extends AuthenticationState {
  final String errorMessage;
  const AuthenticationFailState({
    required this.errorMessage,
    super.user = UserEntity.notAuthenticated,
  });
}
