import 'package:delivery/controller/ui_controller/auth/new_password.dart';
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
        child: Column(
          children: [
            PasswordTextField(passwordController: controller.oldpassController),
            SizedBox(height: 15),
            PasswordTextField(passwordController: controller.newpassController),
            SizedBox(height: 15),
            PasswordTextField(
                passwordController: controller.newconpassController),
          ],
        ),
      ),
    );
  }
}
