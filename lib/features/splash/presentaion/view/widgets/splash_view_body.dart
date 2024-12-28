import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/core/utils/routes.dart';
import 'package:wedding_card/features/splash/presentaion/view/widgets/spalsh_logo.dart';

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
    navigateToHome();
    initRotation();
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
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Nawrna",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransitionDuration);
      GoRouter.of(context).push(AppRoutes.kLoginView);
    });
  }

  void initRotation() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _rotation = Tween<double>(begin: 0.0, end: 4.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }
}
