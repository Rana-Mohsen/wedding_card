import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.route});
  final IconData icon;
  final String title;
  final String route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(route),
      child: ListTile(
        leading: Icon(icon, size: context.screenWidth * 0.08),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios_sharp),
      ),
    );
  }
}
