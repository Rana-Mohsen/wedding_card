import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_card/core/utils/assets.dart';

import 'drawer_listview_image.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 190,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SizedBox(
            height: 90,
            child: DrawerHeader(
              // margin: null,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Cards available'),
            ),
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
