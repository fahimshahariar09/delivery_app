import 'package:delivery/controller/ui_controller/profile.dart';
import 'package:delivery/utlis/app_colors.dart';
import 'package:delivery/view/common_widget/image_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    Size size =MediaQuery.sizeOf(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width,
              padding: EdgeInsets.only(top: 70,bottom: 20),
              decoration: BoxDecoration(
                color: AppColors.bg1LightColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(()=>ImageViewWidget(imageUrl: "${profileController.userInfo['profile_image'] ?? ''}"))
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
