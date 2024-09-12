import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.buttonName,
      this.buttonHeight,
      this.buttonWidth,
      this.buttonColor,
      this.textColor,
      required this.onTap});

  final String buttonName;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
          color: buttonColor ?? Colors.blue,
          child: SizedBox(
            height: buttonHeight ?? 45,
            width: buttonWidth ?? MediaQuery.sizeOf(context).width,
            child: Text("data"),
          )),
    );
  }
}
