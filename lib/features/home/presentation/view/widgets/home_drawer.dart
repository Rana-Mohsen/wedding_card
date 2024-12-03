import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';
import 'package:wedding_card/features/home/domain/entity/drawer_item.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/card_with_image_body.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_drawer_header.dart';

import 'drawer_listview_image.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.screenWidth / 2,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const CustomDrawerHeader(),
          ..._buildDrawerItems(),
        ],
      ),
    );
  }

  final List<DrawerItem> drawerImages = const [
    DrawerItem(
      image: Assets.homeBackgroundBlueAndGoldExample,
      view: CardWithImageBody(),
    ),
    DrawerItem(
      image: Assets.homeBackgroundBlueAndGold,
      view: Center(child: Text("222")),
    ),
  ];

  List<Widget> _buildDrawerItems() {
    return drawerImages.map((item) {
      return DrawerListviewImage(
        image: item.image,
        view: item.view,
      );
    }).toList();
  }
}
