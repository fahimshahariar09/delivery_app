import 'package:delivery/view/common_widget/custom_text.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        surfaceTintColor: Colors.transparent,
        shape: OutlineInputBorder(borderSide: BorderSide.none),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextWidget(text: "log out"),
            ),
            Icon(Icons.logout,color: Colors.black54,),
          ],
        ),
      ),
    );
  }
}
