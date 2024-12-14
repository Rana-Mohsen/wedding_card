import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wedding_card/core/errors/failures.dart';
import 'package:wedding_card/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future<Either<Failure, User>> loginUser() {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> registerUser() {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

}