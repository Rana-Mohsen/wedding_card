import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class AuthFailure extends Failure {
  AuthFailure(super.message);
  factory AuthFailure.fromFirebase(FirebaseAuthException e) {
    switch (e.code) {
      case "wrong-password":
        return AuthFailure("Wrong email or password");
      case "user-not-found":
        return AuthFailure("User not found");
      case "invalid-email":
        return AuthFailure("Invalid email address");
      case "user-disabled":
        return AuthFailure("User account has been disabled");
      case "email-already-in-use":
        return AuthFailure("Email is already in use");
      case "operation-not-allowed":
        return AuthFailure("Email/password accounts are not enabled");
      case "weak-password":
        return AuthFailure("Password is too weak");
      case "too-many-requests":
        return AuthFailure("Too many attempts. Try again later");
      case "account-exists-with-different-credential":
        return AuthFailure(
            "Account exists with different sign-in credentials");
      case "credential-already-in-use":
        return AuthFailure("This credential is already in use");
      case "requires-recent-login":
        return AuthFailure("Recent login required. Please log in again");
      case "network-request-failed":
        return AuthFailure("Network error occurred");
      case "internal-error":
        return AuthFailure("Internal error occurred");
      default:
        return AuthFailure("An unknown error occurred. Please try again");
    }
  }

  factory AuthFailure.fromGeneric(e) {
    debugPrint(e.toString());
    return AuthFailure("An unknown error occurred. Please try again");
  }
}
