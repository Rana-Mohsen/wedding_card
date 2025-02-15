import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wedding_card/constants.dart';
import 'package:wedding_card/features/auth/domain/repos/auth_repo.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

abstract class CardRemoteDataSource {
  void addUserCard({required CardDataEntity card});
}

class CardRemoteDataSourceImpl extends CardRemoteDataSource {
  final FirebaseFirestore firestore;
  final AuthRepo authRepo;
  CardRemoteDataSourceImpl(this.firestore, this.authRepo);
  @override
  void addUserCard({required CardDataEntity card}) async{
    final String? email = await authRepo.getEmail();
    firestore.collection(kCollection).doc(email).collection(kDocCollection).add(card.toMap());
  }
}
