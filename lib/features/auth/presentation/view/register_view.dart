import 'package:flutter/material.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/register_view_body.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  static String id = 'RegisterView';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {


  
  @override
  Widget build(BuildContext context) {
    return const RegisterViewBody();
  }

}
