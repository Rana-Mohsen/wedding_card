import 'package:flutter/material.dart';
import 'package:wedding_card/features/info/presentation/view/widgets/info_view_body.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const InfoViewBody(),
    );
  }
}
 