import 'package:flutter/material.dart';

class CustomNamesTextfield extends StatelessWidget {
  const CustomNamesTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      textAlign: TextAlign.center,
      //scrollPadding: EdgeInsets.all(0),
      cursorHeight: 30,
      style: TextStyle(
          fontFamily: "AlexBrush", fontSize: 28, color: Color(0xffb48418)),
      decoration: InputDecoration(
        // prefixIcon: Icon(Icons.edit),
        hintText: "Name & Name",
        contentPadding: EdgeInsets.zero,
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        isDense: true,
      ),
    );
  }
}
