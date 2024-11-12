import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wedding_card/core/utils/assets.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key, required this.rotation});
  final Animation<double> rotation;
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: rotation,
      child: SvgPicture.asset(
        Assets.splashRingaBlack,
        width: 90,
      ),
    );
    ;
  }
}
