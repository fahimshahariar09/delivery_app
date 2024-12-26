import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
        required this.text,
        this.fontSize,
        this.fontColor,
        this.maxLine,
        this.fontWeight,
        this.textOverflow,
        this.textAlign,
        this.fontFamily,
        this.textLineThrough});

  final String text;
  final bool? textLineThrough;
  final double? fontSize;
  final Color? fontColor;
  final int? maxLine;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine ?? 1,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        decorationStyle: TextDecorationStyle.solid,
        decorationColor: AppColors.bg1LightColor.withOpacity(.5),
        decoration: textLineThrough == true
            ? TextDecoration.lineThrough
            : TextDecoration.none,
        decorationThickness: 2.1,
        fontFamily: fontFamily ?? 'RobotoSerif',
        color: fontColor,
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight ?? FontWeight.normal,
        overflow: textOverflow ?? TextOverflow.ellipsis,
      ),
    );
  }
}