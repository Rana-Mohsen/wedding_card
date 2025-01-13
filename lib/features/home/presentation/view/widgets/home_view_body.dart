import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_card/core/utils/functions/submit_dialog.dart';
import 'package:wedding_card/core/utils/routes.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:wedding_card/features/home/presentation/view_model/card_data_cubit/card_data_cubit.dart';
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
        BlocBuilder<DrawerImageCubit, DrawerImageState>(
          builder: (context, state) {
            if (state is DrawerImageSelected) {
              return Positioned(
                  top: _topPos,
                  right: _sidePos + 50,
                  child: CustomIconButton(
                    icon: Icons.check_circle_outline_outlined,
                    onPressed: () {
                      submitDialog(
                          context: context,
                          submitCard: BlocProvider.of<CardDataCubit>(context));
                    },
                  ));
            }
            return Container();
          },
        ),
        Positioned(
            top: _topPos,
            right: _sidePos,
            child: CustomIconButton(
              icon: Icons.info,
              onPressed: () => GoRouter.of(context).push(AppRoutes.kInfoView),
            )),
      ],
    );
  }
}
