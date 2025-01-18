import 'package:flutter/material.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/custom_rich_text.dart';

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


