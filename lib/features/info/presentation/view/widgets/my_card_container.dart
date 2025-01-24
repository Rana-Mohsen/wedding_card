import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/my_card_container_text.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/row_of_Icons.dart';

class MyCardContainer extends StatelessWidget {
  const MyCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      height: context.screenHeight * 0.31,
      decoration: BoxDecoration(
        color: Colors.cyan,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 4),
          )
        ],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.22,
                    child: Image.asset(Assets.homeBackgroundBlueAndGoldExample),
                  ),
                  const SizedBox(
                      width:
                          10), // Add some spacing between the image and the texts
                  const Expanded(child: MyCardContainerText()),
                ],
              ),
            ),
            const RowOfIcons(),
          ],
        ),
      ),
    );
  }
}
