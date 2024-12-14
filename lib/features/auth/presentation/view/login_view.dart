import 'package:flutter/material.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/login_view_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return LoginViewBody();
  }
}
