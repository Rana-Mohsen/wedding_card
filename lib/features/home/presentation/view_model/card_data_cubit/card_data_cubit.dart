import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:wedding_card/features/home/domain/entity/card_data_entity.dart';

part 'card_data_state.dart';

class CardDataCubit extends Cubit<CardDataState> {
  CardDataCubit() : super(CardDataInitial());
   TextEditingController nameController = TextEditingController();
   TextEditingController locationController = TextEditingController();
   DateTime selectedDate = DateTime.now();
   File pickedImage = File("");

  submitData() {
    String name = nameController.text;
    String location = locationController.text;
    String date = selectedDate.toString();
    String image = pickedImage.path.toString();
    print(name + "\n" + location + "\n" + date + "\n" + image);
    emit(CardDataSubmited());
  }
}
