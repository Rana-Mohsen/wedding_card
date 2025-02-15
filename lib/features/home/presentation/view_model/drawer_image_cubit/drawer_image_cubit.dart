import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'drawer_image_state.dart';

class DrawerImageCubit extends Cubit<DrawerImageState> {
  DrawerImageCubit() : super(DrawerImageInitial());

  showCard(Widget card) {
    emit(DrawerImageSelected(card));
  }
}
