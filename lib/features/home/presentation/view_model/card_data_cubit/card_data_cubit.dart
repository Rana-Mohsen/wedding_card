import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wedding_card/features/home/data/repos/card_repo_impl.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

part 'card_data_state.dart';

class CardDataCubit extends Cubit<CardDataState> {
  CardDataCubit(this.cardRepoImpl) : super(CardDataInitial());

   TextEditingController nameController = TextEditingController();
   TextEditingController locationController = TextEditingController();
   DateTime selectedDate = DateTime.now();
   File pickedImage = File("");

  final CardRepoImpl cardRepoImpl;

  // void checkData() {
  //   emit(CardDataChecking());
  //   if (_isDataValid(_createCardData())) {
  //     emit(CardDataCheckingSucceded());
  //   } else {
  //     emit(CardDataCheckingFailled());
  //   }
  // }

  void submitData() {
    CardDataEntity card = _createCardData();
    cardRepoImpl.addCard(card);
    print("${card.names}\n${card.location}\n${card.date}\n${card.image}");
    emit(CardDataSubmited());
  }

  // bool _isDataValid(CardDataEntity card) {
  //   return card.names != null && card.location != null && card.image != null;
  // }

  CardDataEntity _createCardData() {
    return CardDataEntity(
      cardId: "1",
      image: pickedImage.path,
      location: locationController.text,
      date: selectedDate.toString(),
      names: nameController.text,
    );
  }
}
