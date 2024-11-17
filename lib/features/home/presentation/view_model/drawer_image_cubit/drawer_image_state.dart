part of 'drawer_image_cubit.dart';

@immutable
abstract class DrawerImageState {}

class DrawerImageInitial extends DrawerImageState {}

class DrawerImageSelected extends DrawerImageState {
  final Widget card;

  DrawerImageSelected(this.card);
}
