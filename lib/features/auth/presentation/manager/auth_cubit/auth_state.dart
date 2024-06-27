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
  const factory AuthState.initial({@Default(true) bool obscurePassword}) = _Initial;

  // Sign up states
  const factory AuthState.signUpFailure(String errorMessage) = SignUpFailure;
  const factory AuthState.signUpSuccess(UserModel user) = SignUpSuccess;

  // Sign in states
  const factory AuthState.signInFailure(String errorMessage) = SignInFailure;
  const factory AuthState.signInSuccess(UserModel user) = SignInSuccess;

  // Common loading state for sign up and sign in
  const factory AuthState.authenticationLoading() = AuthenticationLoading;

  // Other states
  const factory AuthState.termsAndConditionUpdate() = TermsAndConditionUpdate;
  const factory AuthState.obscurePasswordText(bool isObscure) = ObscurePasswordText;

  // Sign out state
  const factory AuthState.signOutFailure(String errorMessage) = SignOutFailure;
  const factory AuthState.signOutSuccess() = SignOutSuccess;
}
