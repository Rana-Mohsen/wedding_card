import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/assets.dart';

class CardWithImageBody extends StatelessWidget {
  const CardWithImageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.homeBackgroundBlueAndGold),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
