import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wedding_card/core/errors/failures.dart';
import 'package:wedding_card/features/auth/data/data_sources/user_remote_data_source.dart';
import 'package:wedding_card/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuth _firebaseAuth;
  final UserRemoteDataSource userRemoteDataSource;
  AuthRepoImpl(this._firebaseAuth, this.userRemoteDataSource);

  @override
  Future<Either<Failure, User>> loginUser(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return Right(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure.fromFirebase(e));
    } catch (e) {
      return Left(AuthFailure.fromGeneric(e));
    }
  }

  @override
  Future<Either<Failure, User>> registerUser(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      userRemoteDataSource.addUser(email: email);
      return Right(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure.fromFirebase(e));
    } catch (e) {
      return Left(AuthFailure.fromGeneric(e));
    }
  }
}
