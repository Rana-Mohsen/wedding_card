import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wedding_card/core/utils/media_quairy_extention.dart';

class PickedImage extends StatefulWidget {
  const PickedImage({super.key});

  @override
  State<PickedImage> createState() => _PickedImageState();
}

File? pickedImage;
Future pickImage() async {
  try {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemp = File(image.path);
    pickedImage = imageTemp;
  } on PlatformException catch (e) {
    print('Failed to pick image: $e');
  }
}

class _PickedImageState extends State<PickedImage> {
  @override
  Widget build(BuildContext context) {
    // double hight = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () async {
        await pickImage();
        setState(() {});
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: context.screenHeight / 3.64,
        width: context.screenWidth / 2.6,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(90),
            topRight: Radius.circular(90),
          ),
        ),
        child: pickedImage != null
            ? Image.file(
                pickedImage!,
                fit: BoxFit.fill,
              )
            : const Icon(Icons.image),
      ),
    );
  }
}
