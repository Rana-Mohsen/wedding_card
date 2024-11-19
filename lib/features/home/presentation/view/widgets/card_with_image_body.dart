import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/picked_image.dart';

class CardWithImageBody extends StatelessWidget {
  const CardWithImageBody({super.key});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        Container(
          //constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.homeBackgroundBlueAndGold),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: hight / 3.1,
          left: width / 3.2,
          child: PickedImage(),
        ),
      ],
    );
  }
}
