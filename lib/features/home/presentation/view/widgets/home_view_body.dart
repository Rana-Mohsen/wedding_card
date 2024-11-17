import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedding_card/features/home/presentation/view_model/drawer_image_cubit/drawer_image_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<DrawerImageCubit, DrawerImageState>(
      builder: (context, state) {
        if (state is DrawerImageSelected) {
          return state.card;
        }
        return const Center(child: Text("choose card"));
      },
    );
  }
}
