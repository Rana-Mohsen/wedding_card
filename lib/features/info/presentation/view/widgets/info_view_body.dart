import 'package:flutter/material.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/custom_list_tile.dart';

class InfoViewBody extends StatelessWidget {
  const InfoViewBody({super.key});
  final List<Map<String, dynamic>> listTileData = const [
    {"icon": Icons.person_2_rounded, "title": "My Data", "route": ""},
    {"icon": Icons.celebration_rounded, "title": "My Cards", "route": ""}
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) => CustomListTile(
              icon: listTileData[index]["icon"],
              title: listTileData[index]["title"],
              route: listTileData[index]["route"],
            ));
  }
}
