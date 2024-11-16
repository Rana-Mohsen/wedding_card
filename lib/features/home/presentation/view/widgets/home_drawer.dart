import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_drawer_header.dart';

import 'drawer_listview_image.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 2,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          CustomDrawerHeader(),
          DrawerListviewImage(
            image: Assets.homeBackgroundBlueAndGold,
          ),
          DrawerListviewImage(
            image: Assets.homeBackgroundBlueAndGold,
          ),
        ],
      ),
    );
    ;
  }
}
