import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_card/core/utils/handlers/confitti_handler.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';
import 'package:wedding_card/features/home/presentation/view_model/card_data_cubit/card_data_cubit.dart';

void submitDialog(
    {required BuildContext context, required CardDataCubit submitCard}) {
  final confettiHandler = ConfettiHandler(duration: const Duration(seconds: 1));

  Color? saveBG = Colors.pinkAccent;
  Color? backBG = Colors.grey;
  bool excute = true;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BlocConsumer<CardDataCubit, CardDataState>(
          listener: (context, state) {
        if (state is CardDataSubmited) {
          saveBG = Colors.grey;
          backBG = Colors.pinkAccent;
           excute = false;
        }
      }, builder: (context, state) {
        return AlertDialog(
          title: const Text("Sure you want to save card?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              style: buttonStyle(
                textColor: Colors.white,
                backgroundColor: backBG,
              ),
              child: const Text("Edit Data"),
            ),
            SizedBox(
              height: context.screenHeight * 0.055,
              width: context.screenWidth * 0.12,
              child: Stack(
                alignment: AlignmentDirectional.center,
                fit: StackFit.expand,
                children: [
                  TextButton(
                    onPressed: () {
                      if (excute) {
                        submitCard.submitData();
                        confettiHandler.play();
                      }
                      //GoRouter.of(context).pop();
                    },
                    style: buttonStyle(
                      textColor: Colors.white,
                      backgroundColor: saveBG,
                    ),
                    child: const Text("Save"),
                  ),
                  confettiHandler.buildConfettiWidget(),
                ],
              ),
            ),
          ],
        );
      });
    },
  ).then((_) {
    confettiHandler.dispose();
  });
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
