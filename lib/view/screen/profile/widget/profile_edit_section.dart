import 'package:delivery/controller/ui_controller/profile.dart';
import 'package:delivery/view/common_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditSection extends StatelessWidget {
  const ProfileEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: "profile edit",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
