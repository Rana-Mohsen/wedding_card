import 'package:wedding_card/features/home/data/data_sources/card_remote_data_source.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';
import 'package:wedding_card/features/home/domain/repos/card_repo.dart';

class CardRepoImpl extends CardRepo {
  final CardRemoteDataSource cardDataSource;

  CardRepoImpl(this.cardDataSource);
  @override
  void addCard(CardDataEntity card) {
    cardDataSource.addUserCard(card: card);
  }
}
