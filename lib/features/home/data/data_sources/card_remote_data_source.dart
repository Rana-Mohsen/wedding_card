import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

abstract class CardRemoteDataSource {
  void addUserCard({required CardDataEntity card});
}

class CardRemoteDataSourceImpl extends CardRemoteDataSource {
  final FirebaseFirestore db;

  CardRemoteDataSourceImpl(this.db);
  @override
  void addUserCard({required CardDataEntity card}) {
    //db.collection("users").doc(email).set(card.toMap());
  }
}
