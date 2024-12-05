import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

part 'card_data_state.dart';

class CardDataCubit extends Cubit<CardDataState> {
  CardDataCubit() : super(CardDataInitial());
  CardDataEntity card = CardDataEntity();
  collectData() {
    
  }
}
