import 'package:flutter/material.dart';

class PickDateUseCase{
Future<DateTime?> selectDate(BuildContext context, DateTime initialDate) async {
    return await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }
}