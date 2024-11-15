import 'package:flutter/material.dart';

class DrawerListviewImage extends StatelessWidget {
  const DrawerListviewImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Image.asset(image),
      ),
    );
  }
}
