import 'package:delivery/utlis/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.textInputType,
      required this.labelText});

  final TextEditingController controller;
  final String labelText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType ?? TextInputType.text,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.cardDarkColor)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.cardDarkColor)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.cardDarkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.bg1LightColor)),
            errorStyle: TextStyle(fontSize: 11),
            labelText: labelText),
        validator: (value) {
          if (value.toString() == "") {
            return "field cann't be empty";
          }
          return null;
        },
      ),
    );
  }
}
