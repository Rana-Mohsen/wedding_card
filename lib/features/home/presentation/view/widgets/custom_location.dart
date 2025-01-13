import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_location_textfield.dart';
import 'package:wedding_card/features/home/presentation/view_model/card_data_cubit/card_data_cubit.dart';

class CustomLocation extends StatefulWidget {
  const CustomLocation({super.key,});


  @override
  State<CustomLocation> createState() => _CustomLocationState();
}

class _CustomLocationState extends State<CustomLocation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          icon: Icons.location_on,
          onPressed: () {},
        ),
        SizedBox(
          width: 200,
          child: CustomLocationTextField(
            controller:
                BlocProvider.of<CardDataCubit>(context).locationController,
          ),
        )
      ],
    );
  }
}
