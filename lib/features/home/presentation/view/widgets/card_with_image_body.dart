import 'dart:io';
import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/assets.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_date_picker.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_location.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_names_textfield.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/picked_image.dart';

class CardWithImageBody extends StatefulWidget {
  const CardWithImageBody({super.key});

  @override
  State<CardWithImageBody> createState() => _CardWithImageBodyState();
}

class _CardWithImageBodyState extends State<CardWithImageBody> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  late DateTime _selectedDate;
  late File _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.homeBackgroundBlueAndGold),
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        children: [
          const Spacer(
            flex: 10,
          ),
          Center(
            child: PickedImage(
              onImagePicked: (image) {
                _pickedImage = image;
              },
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          CustomNamesTextfield(controller: _nameController,),
          CustomDatePicker(
            onDatePicked: (date) {
              _selectedDate = date;
            },
          ),
          // Spacer(
          //   flex: 1,
          // ),
          CustomLocation(controller: _locationController,),
          const  Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
