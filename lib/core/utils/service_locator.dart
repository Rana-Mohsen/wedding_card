import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:wedding_card/features/auth/data/repos/auth_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(FirebaseAuth.instance));
}
