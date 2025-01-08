part of 'card_data_cubit.dart';

@immutable
abstract class CardDataState {}

class CardDataInitial extends CardDataState {}
class CardDataFailled extends CardDataState {}
class CardDataSubmited extends CardDataState {}
