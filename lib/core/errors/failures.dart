import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class AuthException extends Failure {
  AuthException(super.message);
  factory AuthException.fromFirebase(FirebaseAuthException e) {
    switch (e.code) {
      case "wrong-password":
        return AuthException("Wrong email or password");
      case "user-not-found":
        return AuthException("User not found");
      case "invalid-email":
        return AuthException("Invalid email address");
      case "user-disabled":
        return AuthException("User account has been disabled");
      case "email-already-in-use":
        return AuthException("Email is already in use");
      case "operation-not-allowed":
        return AuthException("Email/password accounts are not enabled");
      case "weak-password":
        return AuthException("Password is too weak");
      case "too-many-requests":
        return AuthException("Too many attempts. Try again later");
      case "account-exists-with-different-credential":
        return AuthException(
            "Account exists with different sign-in credentials");
      case "credential-already-in-use":
        return AuthException("This credential is already in use");
      case "requires-recent-login":
        return AuthException("Recent login required. Please log in again");
      case "network-request-failed":
        return AuthException("Network error occurred");
      case "internal-error":
        return AuthException("Internal error occurred");
      default:
        return AuthException("An unknown error occurred. Please try again");
    }
  }

  factory AuthException.fromGeneric(e) {
    debugPrint(e.toString());
    return AuthException("An unknown error occurred. Please try again");
  }
}
