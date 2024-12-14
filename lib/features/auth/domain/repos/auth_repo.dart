import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wedding_card/core/errors/failuers.dart';

abstract class AuthRepo {
  Future<Either<Failuer, User>> registerUser();
  Future<Either<Failuer, User>> loginUser();
}
