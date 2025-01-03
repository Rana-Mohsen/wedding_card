import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CardRemoteDataSource {
  void addUserCard();
}

class CardRemoteDataSourceImpl extends CardRemoteDataSource{
  @override
  void addUserCard() {
    var db = FirebaseFirestore.instance;
    
  }

}