part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationSignInEvent extends AuthenticationEvent {
  final String email;

  const AuthenticationSignInEvent({required this.email});

  @override
  List<Object> get props => [email];
}

class AuthenticationSignUpEvent extends AuthenticationEvent {
  final String email;
  final String userName;
  final String civilID;

  const AuthenticationSignUpEvent({
    required this.email,
    required this.userName,
    required this.civilID,
  });

  @override
  List<Object> get props => [
        email,
        userName,
        civilID,
      ];
}
