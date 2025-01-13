import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wedding_card/core/utils/assets.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 9,
      child: DrawerHeader(
        padding: const EdgeInsets.only(left: 0),
        decoration: const BoxDecoration(
          color: Colors.pinkAccent,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 4),
              child: AspectRatio(
                aspectRatio: 2 / 4,
                child: SvgPicture.asset(Assets.splashRingaColored),
              ),
            ),
            const Text(
              'Cards available',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
