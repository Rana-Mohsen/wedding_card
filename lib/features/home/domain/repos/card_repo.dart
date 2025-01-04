import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

abstract class CardRepo {
  void addCard(CardDataEntity card);
}
