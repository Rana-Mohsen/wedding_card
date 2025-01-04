import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wedding_card/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, User>> registerUser(
      {required String email, required String password});
  Future<Either<Failure, User>> loginUser(
      {required String email, required String password});
  Future<String?> getEmail();
}
