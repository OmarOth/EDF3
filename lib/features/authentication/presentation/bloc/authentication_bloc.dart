import 'package:edf3/features/authentication/domain/entities/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/usecase_exports.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
      {required SignInUseCase signInUseCase,
      required SignUpUseCase signUpUseCase})
      : _signInUseCase = signInUseCase,
        _signUpUseCase = signUpUseCase,
        super(const AuthenticationInitialState()) {
    on<AuthenticationSignInEvent>(_authenticationSignInEventHandler);
    on<AuthenticationSignUpEvent>(_authenticationSignUpEventHandler);
  }

  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;

  Future<void> _authenticationSignInEventHandler(
    AuthenticationSignInEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationLoadingState());
    final result = await _signInUseCase(
      SignInUseCaseParams(
        email: event.email,
      ),
    );

    result.fold(
      (l) => emit(AuthenticationFailState(errorMessage: l.errorMessage)),
      (newUser) => emit(AuthenticationSuccessState(newUser: newUser)),
    );
  }

  Future<void> _authenticationSignUpEventHandler(
    AuthenticationSignUpEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationLoadingState());
    final result = await _signUpUseCase(
      SignUpUseCaseParams(
        civilID: event.civilID,
        email: event.email,
        userName: event.userName,
      ),
    );

    result.fold(
      (l) => emit(AuthenticationFailState(errorMessage: l.errorMessage)),
      (newUser) => emit(AuthenticationSuccessState(newUser: newUser)),
    );
  }
}
