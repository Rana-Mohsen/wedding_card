
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class UserRemoteDataSource {
  void addUser({required String email});
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  final FirebaseFirestore db;

  UserRemoteDataSourceImpl(this.db);

  @override
  void addUser({required String email}) {
    db.collection("users").doc(email);
  }
}
