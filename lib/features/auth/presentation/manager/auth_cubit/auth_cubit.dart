import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/service_locator.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repos/auth_repo.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(const AuthState.initial());
  final AuthRepo _authRepo;

  bool _obscurePasswordTextValue = true;
  bool termsAndConditionCheckBoxValue = false;

  UserModel? userAccount;
  bool userIsSignedIn = false;

// ... Sign In Funcs --------------------------

  Future<void> sigInWithEmailAndPassword({required String email, required String password}) async {
    emit(const AuthState.authenticationLoading());
    final result = await _authRepo.loginWithEmail(email: email, password: password);
    result.fold((failure) {
      emit(AuthState.signInFailure(failure.errMessage));
    }, (user) {
      emit(AuthState.signInSuccess(user));
    });
  }

// ... Signup Funcs using email and password ---------------------------------------------------------------------------------------------------------------------------------

  Future<void> signupWithEmailAndPassword({required String name, required String email, required String password}) async {
    emit(const AuthState.authenticationLoading());
    final result = await _authRepo.signupWithEmail(name: name, email: email, password: password);
    result.fold((failure) {
      emit(AuthState.signUpFailure(failure.errMessage));
    }, (user) {
      emit(AuthState.signUpSuccess(user));
    });
  }

  void obscurePasswordText() {
    _obscurePasswordTextValue = !_obscurePasswordTextValue;
    emit(AuthState.obscurePasswordText(_obscurePasswordTextValue));
  }

  void updateTermsAndConditionCheckBox({required bool newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(const AuthState.termsAndConditionUpdate());
  }
// ... Sign out Funcs -------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> signOut() async {
    emit(const AuthState.authenticationLoading());
    final result = await _authRepo.signOut();
    result.fold(
      (failure) {
        emit(const AuthState.signOutFailure('Sign-out failed'));
      },
      (user) {
        userAccount = null;
        userIsSignedIn = false;
        emit(const AuthState.signOutSuccess());
      },
    );
  }

// ... Auth using google -------------------------------------------------------------------------------------------------------------------------------------------------------
  // Future<void> authenticateWithGoogle() async {
  //   emit(AuthLoadingState());
  //   final result = await _authRepo.authWithGoogle();
  //   result.fold((failure) {
  //     userIsSignedIn = false;
  //     emit(AuthFailureState(errorMessage: failure.errMessage));
  //   }, (user) async {
  //     userIsSignedIn = true;
  //     userAccount = user;
  //     // Configure RevenueCat store with the user's ID
  //     await PurchaseApiRevnucat.configRevnuCatStore(userId: user.id);
  //     emit(AuthSuccessState(user: user));
  //   });
  // }
// ... Check if the user is loged in Funcs -------------------------------------------------------------------------------------------------

  // Future<void> checkUserSignInStatus() async {
  //   emit(AuthLoadingState());
  //   final result = await _authRepo.isUserSignedIn();
  //   result.fold(
  //     (failure) {
  //       userIsSignedIn = false;
  //       talker.error('🚨 ${failure.errMessage}');
  //       emit(AuthFailureState(errorMessage: failure.errMessage));
  //     },
  //     (user) async {
  //       userAccount = user;
  //       userIsSignedIn = true;
  //       emit(AuthSuccessState(user: user));
  //     },
  //   );
  // }

//~~~~~~Debug-------------------------------------------------------------------------------------------------------------------------------

  @override
  void onChange(Change<AuthState> change) {
    talker.debug('Current State $change');
    super.onChange(change);
  }
}
