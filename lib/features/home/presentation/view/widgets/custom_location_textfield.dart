import 'package:flutter/material.dart';

class CustomLocationTextField extends StatefulWidget {
  const CustomLocationTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomLocationTextField> createState() => _CustomLocationTextFieldState();
}

class _CustomLocationTextFieldState extends State<CustomLocationTextField> {

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: widget.controller,
            maxLines: 2,
            minLines: 1,
            style: const TextStyle(fontFamily: "Arimo"),
            decoration: const InputDecoration(
              hintText: 'tap to add location',
              hintStyle: TextStyle(fontFamily: "Arimo"),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          );
  }
}