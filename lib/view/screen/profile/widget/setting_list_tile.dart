import 'package:delivery/view/common_widget/custom_text.dart';
import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({super.key, required this.onTap, required this.titel});

  final VoidCallback onTap;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        surfaceTintColor: Colors.transparent,
        shape: const OutlineInputBorder(borderSide: BorderSide.none),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget(
              text: titel,
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 17,
            ),
          ],
        ),
      ),
    );
  }
}