import 'package:flutter/material.dart';

class CustomLocationTextField extends StatelessWidget {
  const CustomLocationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
            maxLines: 2,
            minLines: 1,
            style: TextStyle(fontFamily: "Arimo"),
            decoration: InputDecoration(
              hintText: 'tap to add location',
              hintStyle: TextStyle(fontFamily: "Arimo"),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          );
  }
}