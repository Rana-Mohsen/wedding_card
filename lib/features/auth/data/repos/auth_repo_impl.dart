import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wedding_card/core/errors/failures.dart';
import 'package:wedding_card/features/auth/data/data_sources/user_local_data_source.dart';
import 'package:wedding_card/features/auth/data/data_sources/user_remote_data_source.dart';
import 'package:wedding_card/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuth firebaseAuth;
  final UserRemoteDataSource userRemoteDataSource;
  final UserLocalDataSource userLocalDataSource;
  AuthRepoImpl(
      this.firebaseAuth, this.userRemoteDataSource, this.userLocalDataSource);

  @override
  Future<Either<Failure, User>> loginUser(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      userLocalDataSource.setEmail(email);
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
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      userRemoteDataSource.addUser(email: email);
      return Right(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure.fromFirebase(e));
    } catch (e) {
      return Left(AuthFailure.fromGeneric(e));
    }
  }

  @override
  Future<String?> getEmail() async{
    return await userLocalDataSource.getEmail();
  }
}
