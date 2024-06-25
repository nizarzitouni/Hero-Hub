// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final bool premiumUser;
  final String? userProfilePic;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.premiumUser,
    required this.userProfilePic,
  });

  // Factory constructor to create a UserModel from a Firebase user
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      name: user.displayName ?? '', // Use an empty string or a default name if displayName is null
      email: user.email ?? '', // Use an empty string or a default email if email is null
      premiumUser: false,
      userProfilePic: null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'premiumUser': premiumUser,
      'userProfilePic': userProfilePic,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      premiumUser: map['premiumUser'] as bool,
      userProfilePic: map['userProfilePic'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
