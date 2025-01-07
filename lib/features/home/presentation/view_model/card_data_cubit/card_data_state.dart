part of 'card_data_cubit.dart';

@immutable
abstract class CardDataState {}

class CardDataInitial extends CardDataState {}
class CardDataChecking extends CardDataState {}
class CardDataCheckingFailled extends CardDataState {}
class CardDataCheckingSucceded extends CardDataState {}
class CardDataSubmited extends CardDataState {}
