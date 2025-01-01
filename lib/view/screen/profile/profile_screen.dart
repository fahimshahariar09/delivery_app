import 'package:delivery/controller/ui_controller/profile.dart';
import 'package:delivery/utlis/app_colors.dart';
import 'package:delivery/view/common_widget/custom_text.dart';
import 'package:delivery/view/common_widget/image_view_widget.dart';
import 'package:delivery/view/screen/profile/widget/profile_edit_section.dart';
import 'package:delivery/view/screen/profile/widget/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width,
                  padding: EdgeInsets.only(top: 70, bottom: 20),
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
                        onTap: () {
                          Get.to(() => ImageViewWidget(
                              imageUrl:
                                  "${profileController.userInfo['profile_image'] ?? ''}"));
                        },
                        child: SizedBox(
                          height: 10,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: ClipOval(
                              child: Obx(
                                () => FadeInImage.assetNetwork(
                                  placeholder: "placeholder",
                                  image:
                                      "${profileController.userInfo['profile_image'] ?? ''}",
                                  imageErrorBuilder: (context, o, t) {
                                    return CircleAvatar(
                                      backgroundImage: NetworkImage("url"),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      buildSizedBox(),
                      CustomTextWidget(
                        text:
                            " ${profileController.userInfo["name"] ?? "please update your name"}",
                        fontColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomTextWidget(
                        text:
                            " ${profileController.userInfo["email"] ?? "Empty e-mail"}",
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextWidget(
                            text: "Phone",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                          CustomTextWidget(
                            text: " : ${profileController.userInfo['phone']}",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                          CustomTextWidget(
                            text: "address",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                          CustomTextWidget(
                            text: " : ${profileController.userInfo['address']}",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ],
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: () {
                            showBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return ProfileEditSection();
                                });
                          },
                          icon: Icon(
                            Icons.edit_note_sharp,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                buildSizedBox(height: 10),
                ProfileSection()
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) =>
      SizedBox(height: height, width: width);
}
