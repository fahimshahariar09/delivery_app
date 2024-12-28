import 'package:delivery/controller/ui_controller/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeletedAccountSection extends StatelessWidget {
  const DeletedAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    color: AppColors.bg1LightColor,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: profileController.oldPasswordController,
                    labelText: "current_password",
                  ),
                  const SizedBox(height: 10),
                  Obx(() => profileController.isLoading.value
                      ? const CustomLoadingButton()
                      : CustomButton(
                      text: "deleted",
                      buttonWidth: 150,
                      onTap: () async {
                        FocusScope.of(context).unfocus();
                        if (!profileController.formKey.currentState!
                            .validate()) {
                          return;
                        }
                        if (!await ConnectionChecker.checkConnection()) {
                          CommonSnackBarMessage.noInternetConnection();
                          return;
                        }
                        bool status =
                        await profileController.accountDeleteService();
                        if (status) {
                          profileController.oldPasswordController.clear();
                          Get.back();
                        }
                      }))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}