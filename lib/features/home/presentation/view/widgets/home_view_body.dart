import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedding_card/features/home/presentation/view_model/drawer_image_cubit/drawer_image_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  final double _topPos = 30;
  final double _sidePos = 15;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<DrawerImageCubit, DrawerImageState>(
          builder: (context, state) {
            if (state is DrawerImageSelected) {
              return state.card;
            }
            return const Center(child: Text("choose card"));
          },
        ),
        Positioned(
          top: _topPos,
          left: _sidePos,
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        Positioned(
          top: _topPos,
          right: _sidePos,
          child: IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
