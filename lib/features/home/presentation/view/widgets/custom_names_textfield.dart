import 'package:flutter/material.dart';

class CustomNamesTextfield extends StatefulWidget {
  const CustomNamesTextfield({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomNamesTextfield> createState() => _CustomNamesTextfieldState();
}

class _CustomNamesTextfieldState extends State<CustomNamesTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      textAlign: TextAlign.center,
      //scrollPadding: EdgeInsets.all(0),
      cursorHeight: 30,
      style: const TextStyle(
          fontFamily: "AlexBrush", fontSize: 28, color: Color(0xffb48418)),
      decoration: const InputDecoration(
        // prefixIcon: Icon(Icons.edit),
        hintText: "Name & Name",
        contentPadding: EdgeInsets.zero,
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        isDense: true,
      ),
    );
  }
}
