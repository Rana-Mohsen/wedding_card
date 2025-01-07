import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void submitDialog(
    {required BuildContext context, required void Function()? onPressed}) {
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
            child: const Text("Edit Data"),
          ),
          TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Text("Save"),
          ),
        ],
      );
    },
  );
}
