import 'package:flutter/material.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/login_view_body.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return const LoginViewBody();
  }
}
