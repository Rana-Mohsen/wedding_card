import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_location_textfield.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_names_textfield.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          icon: Icons.location_on,
          onPressed: () {},
        ),
        const SizedBox(
          width: 200,
          child: CustomLocationTextField(),
        )
      ],
    );
  }
}
