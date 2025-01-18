import 'package:flutter/material.dart';

class CardContainerIconButton extends StatelessWidget {
  const CardContainerIconButton({
    super.key,
    this.iconColor,
    required this.icon,
  });
  final Color? iconColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      //highlightColor: Colors.amber,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(244, 255, 255, 255))),
      color: iconColor,
      icon: Icon(icon),
    );
  }
}