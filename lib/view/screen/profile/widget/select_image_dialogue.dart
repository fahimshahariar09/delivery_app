import 'package:delivery/utlis/app_colors.dart';
import 'package:delivery/view/common_widget/custom_text.dart';
import 'package:flutter/material.dart';

class SelectImageDialogue extends StatelessWidget {
  const SelectImageDialogue(
      {super.key, required this.galleryButton, required this.cameraButton});

  final VoidCallback galleryButton;
  final VoidCallback cameraButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextWidget(
            text: "select image from",
            fontSize: 20,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: cameraButton,
                child: Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: AppColors.bg1LightColor,
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
