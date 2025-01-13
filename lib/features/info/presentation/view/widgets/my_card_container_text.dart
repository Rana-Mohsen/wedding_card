import 'package:flutter/material.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';

class MyCardContainerText extends StatelessWidget {
  const MyCardContainerText({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: context.screenWidth * 0.45),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Names: ppppp p ppppppp"),
          Text("Date: ppppp p ppppppp"),
          Text(
            "Location: lksdjdsjsklsjdkljskjdklsjdkljskjdlsjk",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            // softWrap: false,
          ),
        ],
      ),
    );
  }
}
