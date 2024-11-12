import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/features/splash/presentaion/view/widgets/Spalsh_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotation;

  @override
  void initState() {
    super.initState();
    initRotationAnimation();
  }

  void initRotationAnimation() {
    initRotation();
  }

  void initRotation() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();
    _rotation = Tween<double>(begin: 0.0, end: 4.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInSine,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SplashLogo(
          rotation: _rotation,
        ),
        const Center(
          child: Text("Naurna"),
        ),
      ],
    );
  }
}
