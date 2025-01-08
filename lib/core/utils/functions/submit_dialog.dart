import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_card/features/home/presentation/view_model/card_data_cubit/card_data_cubit.dart';

void submitDialog(
    {required BuildContext context, required CardDataCubit  submitCard}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Sure you want to save card?"),
        //content: Text("fill all thr information."),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            style: buttonStyle(
              textColor: Colors.white,
              backgroundColor: Colors.grey,
            ),
            child: const Text("Edit Data"),
          ),
          TextButton(
            onPressed: () {
              submitCard.submitData();
              GoRouter.of(context).pop();
            },
            style: buttonStyle(
              textColor: Colors.white,
              backgroundColor: Colors.pinkAccent,
            ),
            child: const Text("Save"),
          ),
        ],
      );
    },
  );
}

ButtonStyle buttonStyle(
    {required Color? textColor, required Color? backgroundColor}) {
  return ButtonStyle(
    foregroundColor: MaterialStateProperty.all(textColor),
    backgroundColor: MaterialStatePropertyAll(backgroundColor),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    ),
  );
}
