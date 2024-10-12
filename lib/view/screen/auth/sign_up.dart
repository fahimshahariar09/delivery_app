import 'package:delivery/controller/ui_controller/auth/sign_up.dart';
import 'package:delivery/view/common_widget/common_button.dart';
import 'package:delivery/view/screen/auth/widget/con_password_text_field.dart';
import 'package:delivery/view/screen/auth/widget/email_text_field.dart';
import 'package:delivery/view/screen/auth/widget/name_text_field.dart';
import 'package:delivery/view/screen/auth/widget/password_text_field.dart';
import 'package:delivery/view/screen/auth/widget/phone_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 25),
              NameTextField(
                nameController: signUpController.nameController,
              ),
              const SizedBox(height: 15),
              PhoneTextField(phoneController: signUpController.phoneController),
              const SizedBox(height: 15),
              EmailTextField(emailController: signUpController.emailController),
              const SizedBox(height: 15),
              PasswordTextField(
                  passwordController: signUpController.passwordController),
              const SizedBox(height: 15),
              ConPasswordTextField(
                  conpasswordController:
                      signUpController.conpasswordController),
              const SizedBox(height: 20),
              CommonButton(buttonName: "Sign Up", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
