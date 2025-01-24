import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/my_card_container.dart';

class MyCardsViewBody extends StatelessWidget {
  const MyCardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => MyCardContainer(),
    );
  }
}
