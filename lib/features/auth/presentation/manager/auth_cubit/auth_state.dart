// part of 'auth_cubit.dart';

// sealed class AuthState {}

// final class AuthInitialState extends AuthState {}

// //~~~~~~~~~~~~~~Login~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// class LoginLoadingState extends AuthState {}

// class LoginSuccessState extends AuthState {}

// class LoginFailureState extends AuthState {
//   LoginFailureState({required this.errorMessage});
//   final String errorMessage;
// }
// //~~~~~~~~~~~~~~Signin~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// class AuthLoadingState extends AuthState {}

// class AuthSuccessState extends AuthState {
//   AuthSuccessState({required this.user});
//   final UserModel user;
// }

// class AuthFailureState extends AuthState {
//   AuthFailureState({required this.errorMessage});
//   final String errorMessage;
// }

// class TermsAndConditionUpdateState extends AuthState {}

// class ObsecurePasswordTextState extends AuthState {}

// //~~~~~~~~~~~~~~Signout~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// class SignOutSuccessState extends AuthState {}

// //~~~~~~~~~~~~~~Others~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  // Login states
  const factory AuthState.loginLoading() = LoginLoading;
  const factory AuthState.loginSuccess() = LoginSuccess;
  const factory AuthState.loginFailure(String errorMessage) = LoginFailure;

  // Sign in states
  const factory AuthState.authLoading() = AuthLoading;
  const factory AuthState.authSuccess(UserModel user) = AuthSuccess;
  const factory AuthState.authFailure(String errorMessage) = AuthFailure;

  // Other states
  const factory AuthState.termsAndConditionUpdate() = TermsAndConditionUpdate;
  const factory AuthState.obsecurePasswordText() = ObsecurePasswordText;

  // Sign out state
  const factory AuthState.signOutSuccess() = SignOutSuccess;
}
