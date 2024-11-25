import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';
import 'package:wedding_card/features/home/presentation/view_model/drawer_image_cubit/drawer_image_cubit.dart';

class DrawerListviewImage extends StatelessWidget {
  const DrawerListviewImage({super.key, required this.image, required this.view});
  final String image;
  final Widget view;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<DrawerImageCubit>(context).showCard(view);
        },
        child: SizedBox(
          height: context.screenHeight / 3.5,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
