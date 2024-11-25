import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/picked_image.dart';
import 'package:wedding_card/features/home/presentation/view_model/drawer_image_cubit/drawer_image_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  final double _topPos = 30;
  final double _sidePos = 15;
  @override
  Widget build(BuildContext context) {
    // double hight = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;

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
          child: CustomIconButton(
            icon: Icons.menu,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        Positioned(
            top: _topPos,
            right: _sidePos,
            child: CustomIconButton(
              icon: Icons.info,
              onPressed: () {},
            )),
       
      ],
    );
  }
}
