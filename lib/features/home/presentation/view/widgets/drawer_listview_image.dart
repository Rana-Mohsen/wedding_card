import 'package:flutter/material.dart';

class DrawerListviewImage extends StatelessWidget {
  const DrawerListviewImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        child: Image.asset(image),
      ),
    );
  }
}
