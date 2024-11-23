import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_date_picker.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/picked_image.dart';

class CardWithImageBody extends StatefulWidget {
  const CardWithImageBody({super.key});

  @override
  State<CardWithImageBody> createState() => _CardWithImageBodyState();
}

class _CardWithImageBodyState extends State<CardWithImageBody> {
 
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      //constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.homeBackgroundBlueAndGold),
          fit: BoxFit.contain,
        ),
      ),
      child: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 4,
          ),
          Center(
            child: const PickedImage(),
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: "Name & Name"),
          ),
          CustomDatePicker(),
          Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}
