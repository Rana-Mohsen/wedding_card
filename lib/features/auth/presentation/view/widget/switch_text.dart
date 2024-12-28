import 'package:flutter/material.dart';

class SwitchText extends StatelessWidget {
  const SwitchText({super.key, required this.text1, required this.text2, required this.onTap});
final String text1;
final String text2;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      text1,
                      style: const TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child:  Text(
                        text2,
                        style:const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                );
  }
}