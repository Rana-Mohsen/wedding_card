import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wedding_card/core/errors/failures.dart';
import 'package:wedding_card/features/auth/domain/repos/auth_repo.dart';


class LoginUserUsecase {
  final AuthRepo repository;

  LoginUserUsecase(this.repository);

  Future<Either<Failure, User>> call({required String email, required String password}) async {
    return await repository.loginUser(email: email, password: password);
  }
}