import 'package:flutter/material.dart';

class PickedImage extends StatelessWidget {
  const PickedImage({super.key});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: (){},
      child: Container(
        height: hight / 3.7,
        width: width / 2.7,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(90),
            topRight: Radius.circular(90),
          ),
        ),
      ),
    );
  }
}
