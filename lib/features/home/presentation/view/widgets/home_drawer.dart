import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/card_with_image_body.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_drawer_header.dart';

import 'drawer_listview_image.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});
  final List<Map<String, dynamic>> drawerImages = const [
    {
      "image": Assets.homeBackgroundBlueAndGoldExample,
      "view": CardWithImageBody()
    },
    {
      "image": Assets.homeBackgroundBlueAndGold,
      "view": Center(child: Text("222")),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 2,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const CustomDrawerHeader(),
          DrawerListviewImage(
            image: drawerImages[0]["image"],
            view: drawerImages[0]["view"],
          ),
          DrawerListviewImage(
            image: drawerImages[1]["image"],
            view: drawerImages[1]["view"],
          ),
        ],
      ),
    );
  }
}
