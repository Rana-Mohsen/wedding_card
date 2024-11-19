import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          //Spacer(),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
