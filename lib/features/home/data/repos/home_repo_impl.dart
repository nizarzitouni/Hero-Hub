// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fpdart/fpdart.dart';

// import '../../../core/errors/failures.dart';
// import '../../auth/data/models/user_model.dart';
// import 'home_repo.dart';

// class HomeRepoImpl extends HomeRepo {
//   @override
//   Future<Either<Failure, UserModel>> updatePremiumUserStatus({required bool premiumUser}) async {
//     try {
//       String uid = FirebaseAuth.instance.currentUser!.uid;

//       CollectionReference users = FirebaseFirestore.instance.collection("users");
//       DocumentReference userRef = users.doc(uid);

//       // Update the addFree field
//       await userRef.update({'premiumUser': premiumUser});
//       // Fetch the updated document
//       DocumentSnapshot updatedDoc = await userRef.get();
//       UserModel updatedUser = UserModel.fromMap(updatedDoc.data() as Map<String, dynamic>);

//       return right(updatedUser);
//     } on Exception catch (e) {
//       return left(Failure(e.toString())); // Assuming `Failure` is a class you've defined
//     }
//   }
// }
