import 'package:delivery/controller/ui_controller/auth/sign_in.dart';
import 'package:delivery/view/common_widget/common_button.dart';
import 'package:delivery/view/screen/auth/widget/email_text_field.dart';
import 'package:delivery/view/screen/auth/widget/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              EmailTextField(
                emailController: signInController.emailController,
              ),
              SizedBox(height: 15),
              PasswordTextField(
                passwordController: signInController.passwordController,
              ),
              SizedBox(height: 15),
              CommonButton(buttonName: "Sign In", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
