// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:fpdart/src/either.dart';
// import 'package:supabase_flutter/supabase_flutter.dart' as sb;

// import 'package:live_app_prototype/core/errors/failures.dart';
// import 'package:live_app_prototype/features/auth/data/repos/auth_repo.dart';

// import '../../../../core/errors/exceptions.dart';
// import '../models/user_model.dart';

// class AuthRepoImplWithSupabase implements AuthRepo {
//   final sb.SupabaseClient supabaseClient;
//   AuthRepoImplWithSupabase({required this.supabaseClient});

//   @override
//   Future<Either<Failure, UserModel>> loginWithEmail({required String name, required String email, required String password}) {
//     // TODO: implement loginWithEmail
//     throw UnimplementedError();
//   }

//   @override
//   Future<Either<Failure, UserModel>> signupWithEmail({required String name, required String email, required String password}) async {
//     try {
//       final response = await supabaseClient.auth.signUp(
//         password: password,
//         email: email,
//         data: {
//           'name': name,
//         },
//       );
//       if (response.user == null) {
//         throw ServerException("User is null !!");
//       }
//       var user = UserModel.fromMap(response.session?.user.toJson() ?? {});
//       return right(user);
//     } on ServerException catch (e) {
//       return left(Failure(e.msg));
//     }
//   }
// }
