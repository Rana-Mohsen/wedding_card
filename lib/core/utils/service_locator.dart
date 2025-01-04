import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_card/features/auth/data/data_sources/user_local_data_source.dart';
import 'package:wedding_card/features/auth/data/data_sources/user_remote_data_source.dart';
import 'package:wedding_card/features/auth/data/repos/auth_repo_impl.dart';
import 'package:wedding_card/features/home/data/data_sources/card_remote_data_source.dart';
import 'package:wedding_card/features/home/data/repos/card_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() async {
  final sharedPref = await SharedPreferences.getInstance();
  getIt.registerSingleton<UserRemoteDataSourceImpl>(
      UserRemoteDataSourceImpl(FirebaseFirestore.instance));
  getIt.registerSingleton<UserLocalDataSourceImpl>(
      UserLocalDataSourceImpl(sharedPref));
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(
      FirebaseAuth.instance,
      getIt.get<UserRemoteDataSourceImpl>(),
      getIt.get<UserLocalDataSourceImpl>()));
  getIt.registerSingleton<CardRemoteDataSourceImpl>(CardRemoteDataSourceImpl(
      FirebaseFirestore.instance, getIt.get<AuthRepoImpl>()));
  getIt.registerSingleton<CardRepoImpl>(
      CardRepoImpl(getIt.get<CardRemoteDataSourceImpl>()));
}
