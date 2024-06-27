import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> loginWithEmail({required String email, required String password});
  Future<Either<Failure, UserModel>> signupWithEmail({required String name, required String email, required String password});
  // Future<Either<Failure, UserModel>> authWithGoogle();
  // Future<Either<Failure, UserModel>> isUserSignedIn();
  Future<Either<Failure, Unit>> signOut();
}
