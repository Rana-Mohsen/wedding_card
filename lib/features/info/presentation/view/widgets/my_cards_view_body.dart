import 'package:flutter/material.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/my_card_container.dart';

class MyCardsViewBody extends StatelessWidget {
  const MyCardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: MyCardContainer()
    );
  }
}
