import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.label,
    required this.data,
  });
  final String label;
  final String data;
  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      text: TextSpan(style: const TextStyle(fontSize: 15), children: [
        TextSpan(text: "$label: "),
        TextSpan(text: data, style: const TextStyle(color: Colors.black45)),
      ]),
    );
  }
}