import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wedding_card/constants.dart';
import 'package:wedding_card/features/auth/domain/repos/auth_repo.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

class MyCardsRemoteDataSource {
  final FirebaseFirestore firestore;
  final AuthRepo authRepo;

  MyCardsRemoteDataSource(this.firestore, this.authRepo);

  Future<Stream<List<CardDataEntity>>> getCards() async {
    CardDataEntity card;
    String? email = await authRepo.getEmail();
    var collectionRef = firestore.collection(kCollection);
    var docRef = collectionRef.doc(email);
    var supCollectionRef = docRef.collection(kDocCollection);

    Stream<List<CardDataEntity>> cardList = supCollectionRef.snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => card = CardDataEntity(
                cardId: doc["id"],
                image: doc["image"],
                names: doc["names"],
                location: doc["location"],
                date: doc["date"]))
            .toList());
    return cardList;
  }
}
