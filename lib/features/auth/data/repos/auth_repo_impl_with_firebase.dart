import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../models/user_model.dart';
import 'auth_repo.dart';

class AuthRepoImplWithFirebase extends AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Future<Either<Failure, UserModel>> loginWithEmail({required String email, required String password}) async {
    try {
      try {
        final userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
        if (userCredential.user == null) {
          throw ServerException('User is null !!');
        }
        final user = UserModel.fromFirebaseUser(userCredential.user!);
        return right(user);
      } on FirebaseAuthException catch (firebaseEx) {
        if (firebaseEx.code == 'user-not-found') {
          return left(const Failure('user-not-found'));
        } else if (firebaseEx.code == 'wrong-password') {
          return left(const Failure('wrong-password'));
        } else {
          return left(Failure('Somthing went wrong: $firebaseEx'));
        }
      } catch (ex) {
        return left(Failure('Exception: $ex'));
      }
    } on Exception catch (e) {
      return left(Failure('Somthing went wrong: $e'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> signupWithEmail({required String name, required String email, required String password}) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      final user = UserModel.fromFirebaseUser(userCredential.user!);

      await saveUserToFireStroe(id: user.id, name: name, email: email);
      // await verifyEmail();
      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left(const Failure('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        return left(const Failure('The account already exists for that email.'));
      }
      return left(Failure('Exception: $e'));
    } catch (e) {
      return left(Failure('Somthing went wrong: $e'));
    }
  }

  Future<void> saveUserToFireStroe({required String id, required String name, required String email}) async {
    final CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      'id': id,
      'name': name,
      'email': email,
      'addFree': false, // Set addFree to false by default
    });
  }

  Future<void> verifyEmail() async {
    await _auth.currentUser!.sendEmailVerification();
  }

  // @override
  // Future<Either<Failure, UserModel>> isUserSignedIn() async {
  //   try {
  //     final user = _auth.currentUser;
  //     if (user != null) {
  //       return right(UserModel.fromFirebaseUser(user));
  //     }
  //     return left(const Failure('No user is currently signed in.'));
  //   } catch (e) {
  //     return left(Failure('Failed to check user sign-in status: $e'));
  //   }
  // }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _auth.signOut();
      return right(unit); // Assuming you have a `unit` constant defined
    } catch (e) {
      return left(Failure(e.toString())); // Assuming `Failure` is a class you've defined
    }
  }

  // @override
  // Future<Either<Failure, UserModel>> authWithGoogle() async {
  //   try {
  //     // Trigger the Google Sign-In flow
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

  //     // If the user cancels the sign-in, googleUser will be null
  //     if (googleUser == null) {
  //       return left(const Failure('Sign-in canceled by user'));
  //     }

  //     // Obtain the auth details from the request
  //     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  //     // Create a new credential
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     // Once signed in, return the UserCredential
  //     final UserCredential userCredential = await _auth.signInWithCredential(credential);

  //     // Convert the Firebase user to your UserModel
  //     final firebaseUser = userCredential.user;
  //     if (firebaseUser == null) {
  //       throw Exception('User is null');
  //     }
  //     final user = UserModel.fromFirebaseUser(firebaseUser);
  //     // Check if the user is new or existing
  //     if (userCredential.additionalUserInfo?.isNewUser == true) {
  //       // This is a new user, you might want to redirect them to a setup page
  //       await saveUserToFireStroe(id: user.id, name: user.name, email: user.email);
  //     } else {
  //       // This is an existing user, you might want to redirect them to the home page
  //     }

  //     return right(user);
  //   } on FirebaseAuthException catch (e) {
  //     // Handle FirebaseAuthException
  //     return left(Failure('FirebaseAuthException: ${e.message}'));
  //   } on Exception catch (e) {
  //     // Handle general exceptions
  //     return left(Failure('Exception: ${e.toString()}'));
  //   }
  // }
}
