import 'package:delivery/controller/ui_controller/auth/new_password.dart';
import 'package:delivery/view/common_widget/custom_button.dart';
import 'package:delivery/view/screen/auth/sign_in.dart';
import 'package:delivery/view/screen/auth/widget/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    NewPasswordController controller = Get.put(NewPasswordController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              PasswordTextField(
                passwordController: controller.oldpassController,
                lText: "Old Password",
              ),
              const SizedBox(height: 15),
              PasswordTextField(
                passwordController: controller.newpassController,
                lText: "New Password",
              ),
              const SizedBox(height: 15),
              PasswordTextField(
                passwordController: controller.newconpassController,
                lText: "Confram Password",
              ),
              const SizedBox(height: 25),
              CustomButton(
                  text: "Confram",
                  buttonWidth: 200,
                  onTap: () {
                    Get.to(const SignIn());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
