import 'package:flutter/material.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/cards_container_icon_button.dart';

class RowOfIcons extends StatelessWidget {
  const RowOfIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardContainerIconButton(
          icon: Icons.delete,
          iconColor: Color.fromARGB(255, 236, 75, 75),
        ),
        CardContainerIconButton(
          icon: Icons.share,
          iconColor: Colors.blueGrey,
        ),
      ],
    );
  }
}