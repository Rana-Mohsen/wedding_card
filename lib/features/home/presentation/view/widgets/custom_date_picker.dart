import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/functions/format_date.dart';
import 'package:wedding_card/features/home/domain/usecase/pick_date_usecase.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/custom_icon_button.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate = DateTime.now();
  PickDateUseCase pickDateUseCase = PickDateUseCase();
  _selectDate(BuildContext context) async {
    final DateTime? picked = await pickDateUseCase.selectDate(context,selectedDate);
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          icon: Icons.calendar_month,
          onPressed: () => _selectDate(context),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          formatDate(selectedDate.toLocal()),
        ),
      ],
    );
  }
}
