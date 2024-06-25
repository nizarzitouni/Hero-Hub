// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool obscurePassword});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obscurePassword = null,
  }) {
    return _then(_$InitialImpl(
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.obscurePassword = true});

  @override
  @JsonKey()
  final bool obscurePassword;

  @override
  String toString() {
    return 'AuthState.initial(obscurePassword: $obscurePassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, obscurePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return initial(obscurePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return initial?.call(obscurePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(obscurePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial({final bool obscurePassword}) = _$InitialImpl;

  bool get obscurePassword;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailureImplCopyWith<$Res> {
  factory _$$SignUpFailureImplCopyWith(
          _$SignUpFailureImpl value, $Res Function(_$SignUpFailureImpl) then) =
      __$$SignUpFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SignUpFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpFailureImpl>
    implements _$$SignUpFailureImplCopyWith<$Res> {
  __$$SignUpFailureImplCopyWithImpl(
      _$SignUpFailureImpl _value, $Res Function(_$SignUpFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SignUpFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpFailureImpl implements SignUpFailure {
  const _$SignUpFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.signUpFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailureImplCopyWith<_$SignUpFailureImpl> get copyWith =>
      __$$SignUpFailureImplCopyWithImpl<_$SignUpFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return signUpFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return signUpFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return signUpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return signUpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure implements AuthState {
  const factory SignUpFailure(final String errorMessage) = _$SignUpFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SignUpFailureImplCopyWith<_$SignUpFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<$Res> {
  factory _$$SignUpSuccessImplCopyWith(
          _$SignUpSuccessImpl value, $Res Function(_$SignUpSuccessImpl) then) =
      __$$SignUpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpSuccessImpl>
    implements _$$SignUpSuccessImplCopyWith<$Res> {
  __$$SignUpSuccessImplCopyWithImpl(
      _$SignUpSuccessImpl _value, $Res Function(_$SignUpSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignUpSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessImpl implements SignUpSuccess {
  const _$SignUpSuccessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.signUpSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<_$SignUpSuccessImpl> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<_$SignUpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return signUpSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return signUpSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess implements AuthState {
  const factory SignUpSuccess(final UserModel user) = _$SignUpSuccessImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$SignUpSuccessImplCopyWith<_$SignUpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFailureImplCopyWith<$Res> {
  factory _$$SignInFailureImplCopyWith(
          _$SignInFailureImpl value, $Res Function(_$SignInFailureImpl) then) =
      __$$SignInFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SignInFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignInFailureImpl>
    implements _$$SignInFailureImplCopyWith<$Res> {
  __$$SignInFailureImplCopyWithImpl(
      _$SignInFailureImpl _value, $Res Function(_$SignInFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SignInFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInFailureImpl implements SignInFailure {
  const _$SignInFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.signInFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailureImplCopyWith<_$SignInFailureImpl> get copyWith =>
      __$$SignInFailureImplCopyWithImpl<_$SignInFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return signInFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return signInFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return signInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return signInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(this);
    }
    return orElse();
  }
}

abstract class SignInFailure implements AuthState {
  const factory SignInFailure(final String errorMessage) = _$SignInFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SignInFailureImplCopyWith<_$SignInFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<$Res> {
  factory _$$SignInSuccessImplCopyWith(
          _$SignInSuccessImpl value, $Res Function(_$SignInSuccessImpl) then) =
      __$$SignInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignInSuccessImpl>
    implements _$$SignInSuccessImplCopyWith<$Res> {
  __$$SignInSuccessImplCopyWithImpl(
      _$SignInSuccessImpl _value, $Res Function(_$SignInSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignInSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SignInSuccessImpl implements SignInSuccess {
  const _$SignInSuccessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.signInSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<_$SignInSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return signInSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return signInSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return signInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class SignInSuccess implements AuthState {
  const factory SignInSuccess(final UserModel user) = _$SignInSuccessImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLoadingImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingImplCopyWith(
          _$AuthenticationLoadingImpl value,
          $Res Function(_$AuthenticationLoadingImpl) then) =
      __$$AuthenticationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationLoadingImpl>
    implements _$$AuthenticationLoadingImplCopyWith<$Res> {
  __$$AuthenticationLoadingImplCopyWithImpl(_$AuthenticationLoadingImpl _value,
      $Res Function(_$AuthenticationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationLoadingImpl implements AuthenticationLoading {
  const _$AuthenticationLoadingImpl();

  @override
  String toString() {
    return 'AuthState.authenticationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return authenticationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return authenticationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (authenticationLoading != null) {
      return authenticationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return authenticationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return authenticationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (authenticationLoading != null) {
      return authenticationLoading(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLoading implements AuthState {
  const factory AuthenticationLoading() = _$AuthenticationLoadingImpl;
}

/// @nodoc
abstract class _$$TermsAndConditionUpdateImplCopyWith<$Res> {
  factory _$$TermsAndConditionUpdateImplCopyWith(
          _$TermsAndConditionUpdateImpl value,
          $Res Function(_$TermsAndConditionUpdateImpl) then) =
      __$$TermsAndConditionUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TermsAndConditionUpdateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$TermsAndConditionUpdateImpl>
    implements _$$TermsAndConditionUpdateImplCopyWith<$Res> {
  __$$TermsAndConditionUpdateImplCopyWithImpl(
      _$TermsAndConditionUpdateImpl _value,
      $Res Function(_$TermsAndConditionUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TermsAndConditionUpdateImpl implements TermsAndConditionUpdate {
  const _$TermsAndConditionUpdateImpl();

  @override
  String toString() {
    return 'AuthState.termsAndConditionUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsAndConditionUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return termsAndConditionUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return termsAndConditionUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (termsAndConditionUpdate != null) {
      return termsAndConditionUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return termsAndConditionUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return termsAndConditionUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (termsAndConditionUpdate != null) {
      return termsAndConditionUpdate(this);
    }
    return orElse();
  }
}

abstract class TermsAndConditionUpdate implements AuthState {
  const factory TermsAndConditionUpdate() = _$TermsAndConditionUpdateImpl;
}

/// @nodoc
abstract class _$$ObscurePasswordTextImplCopyWith<$Res> {
  factory _$$ObscurePasswordTextImplCopyWith(_$ObscurePasswordTextImpl value,
          $Res Function(_$ObscurePasswordTextImpl) then) =
      __$$ObscurePasswordTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$ObscurePasswordTextImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ObscurePasswordTextImpl>
    implements _$$ObscurePasswordTextImplCopyWith<$Res> {
  __$$ObscurePasswordTextImplCopyWithImpl(_$ObscurePasswordTextImpl _value,
      $Res Function(_$ObscurePasswordTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$ObscurePasswordTextImpl(
      null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ObscurePasswordTextImpl implements ObscurePasswordText {
  const _$ObscurePasswordTextImpl(this.isObscure);

  @override
  final bool isObscure;

  @override
  String toString() {
    return 'AuthState.obscurePasswordText(isObscure: $isObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObscurePasswordTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObscurePasswordTextImplCopyWith<_$ObscurePasswordTextImpl> get copyWith =>
      __$$ObscurePasswordTextImplCopyWithImpl<_$ObscurePasswordTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return obscurePasswordText(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return obscurePasswordText?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (obscurePasswordText != null) {
      return obscurePasswordText(isObscure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return obscurePasswordText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return obscurePasswordText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (obscurePasswordText != null) {
      return obscurePasswordText(this);
    }
    return orElse();
  }
}

abstract class ObscurePasswordText implements AuthState {
  const factory ObscurePasswordText(final bool isObscure) =
      _$ObscurePasswordTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$ObscurePasswordTextImplCopyWith<_$ObscurePasswordTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutFailureImplCopyWith<$Res> {
  factory _$$SignOutFailureImplCopyWith(_$SignOutFailureImpl value,
          $Res Function(_$SignOutFailureImpl) then) =
      __$$SignOutFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SignOutFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignOutFailureImpl>
    implements _$$SignOutFailureImplCopyWith<$Res> {
  __$$SignOutFailureImplCopyWithImpl(
      _$SignOutFailureImpl _value, $Res Function(_$SignOutFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SignOutFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignOutFailureImpl implements SignOutFailure {
  const _$SignOutFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.signOutFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutFailureImplCopyWith<_$SignOutFailureImpl> get copyWith =>
      __$$SignOutFailureImplCopyWithImpl<_$SignOutFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return signOutFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return signOutFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signOutFailure != null) {
      return signOutFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return signOutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return signOutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signOutFailure != null) {
      return signOutFailure(this);
    }
    return orElse();
  }
}

abstract class SignOutFailure implements AuthState {
  const factory SignOutFailure(final String errorMessage) =
      _$SignOutFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SignOutFailureImplCopyWith<_$SignOutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutSuccessImplCopyWith<$Res> {
  factory _$$SignOutSuccessImplCopyWith(_$SignOutSuccessImpl value,
          $Res Function(_$SignOutSuccessImpl) then) =
      __$$SignOutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignOutSuccessImpl>
    implements _$$SignOutSuccessImplCopyWith<$Res> {
  __$$SignOutSuccessImplCopyWithImpl(
      _$SignOutSuccessImpl _value, $Res Function(_$SignOutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutSuccessImpl implements SignOutSuccess {
  const _$SignOutSuccessImpl();

  @override
  String toString() {
    return 'AuthState.signOutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscurePassword) initial,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(UserModel user) signUpSuccess,
    required TResult Function(String errorMessage) signInFailure,
    required TResult Function(UserModel user) signInSuccess,
    required TResult Function() authenticationLoading,
    required TResult Function() termsAndConditionUpdate,
    required TResult Function(bool isObscure) obscurePasswordText,
    required TResult Function(String errorMessage) signOutFailure,
    required TResult Function() signOutSuccess,
  }) {
    return signOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool obscurePassword)? initial,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(UserModel user)? signUpSuccess,
    TResult? Function(String errorMessage)? signInFailure,
    TResult? Function(UserModel user)? signInSuccess,
    TResult? Function()? authenticationLoading,
    TResult? Function()? termsAndConditionUpdate,
    TResult? Function(bool isObscure)? obscurePasswordText,
    TResult? Function(String errorMessage)? signOutFailure,
    TResult? Function()? signOutSuccess,
  }) {
    return signOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscurePassword)? initial,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(UserModel user)? signUpSuccess,
    TResult Function(String errorMessage)? signInFailure,
    TResult Function(UserModel user)? signInSuccess,
    TResult Function()? authenticationLoading,
    TResult Function()? termsAndConditionUpdate,
    TResult Function(bool isObscure)? obscurePasswordText,
    TResult Function(String errorMessage)? signOutFailure,
    TResult Function()? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignInFailure value) signInFailure,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(AuthenticationLoading value)
        authenticationLoading,
    required TResult Function(TermsAndConditionUpdate value)
        termsAndConditionUpdate,
    required TResult Function(ObscurePasswordText value) obscurePasswordText,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(SignOutSuccess value) signOutSuccess,
  }) {
    return signOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignInFailure value)? signInFailure,
    TResult? Function(SignInSuccess value)? signInSuccess,
    TResult? Function(AuthenticationLoading value)? authenticationLoading,
    TResult? Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult? Function(ObscurePasswordText value)? obscurePasswordText,
    TResult? Function(SignOutFailure value)? signOutFailure,
    TResult? Function(SignOutSuccess value)? signOutSuccess,
  }) {
    return signOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(AuthenticationLoading value)? authenticationLoading,
    TResult Function(TermsAndConditionUpdate value)? termsAndConditionUpdate,
    TResult Function(ObscurePasswordText value)? obscurePasswordText,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(SignOutSuccess value)? signOutSuccess,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccess implements AuthState {
  const factory SignOutSuccess() = _$SignOutSuccessImpl;
}
