import 'package:flutter/material.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/my_cards_view_body.dart';

class MyCardsView extends StatelessWidget {
  const MyCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pinkAccent,
      appBar: AppBar(),
      body: const MyCardsViewBody(),
    );
  }
}
