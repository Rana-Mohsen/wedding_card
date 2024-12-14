import 'package:flutter/material.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/register_view_body.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static String id = 'RegisterScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  
  @override
  Widget build(BuildContext context) {
    return RegisterViewBody();
  }

}
