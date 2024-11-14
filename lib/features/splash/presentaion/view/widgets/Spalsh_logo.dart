import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wedding_card/core/utils/assets.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({super.key, required this.rotation});
  final Animation<double> rotation;

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  String currentImage = Assets.splashRingaBlack;

  @override
  void initState() {
    super.initState();
    rotationListener();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: widget.rotation,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: SvgPicture.asset(
          currentImage,
          key: ValueKey<String>(currentImage),
          width: 120,
        ),
      ),
    );
  }

  void rotationListener() {
    widget.rotation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          currentImage = Assets.splashRingaColored;
        });
      }
    });
  }
}
