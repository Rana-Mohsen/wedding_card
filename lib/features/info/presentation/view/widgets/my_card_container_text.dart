import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';

class MyCardContainerText extends StatelessWidget {
  const MyCardContainerText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomRichText(
          label: "Names",
          data: "jklfj t ldkjfldjfj",
        ),
        CustomRichText(
          label: "Date",
          data: "23/23/2334",
        ),
        CustomRichText(
          label: "Location",
          data: "jklfj kjfdkljf ldkjfldjfj",
        ),
      ],
    );
  }
}

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
