import 'package:delivery/controller/ui_controller/auth/sign_up.dart';
import 'package:delivery/view/common_widget/custom_button.dart';
import 'package:delivery/view/screen/auth/sign_in.dart';
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
          child: Form(
            key: signUpController.formKey,
            child: Column(
              children: [
                const SizedBox(height: 25),
                NameTextField(
                  nameController: signUpController.nameController,
                ),
                const SizedBox(height: 15),
                PhoneTextField(
                    phoneController: signUpController.phoneController),
                const SizedBox(height: 15),
                EmailTextField(
                    emailController: signUpController.emailController),
                const SizedBox(height: 15),
                PasswordTextField(
                  lText: "Password",
                  passwordController: signUpController.passwordController,
                ),
                const SizedBox(height: 15),
                ConPasswordTextField(
                    conpasswordController:
                        signUpController.conpasswordController),
                const SizedBox(height: 20),
                Obx(() => signUpController.isLoading.isTrue
                    ? CustomButton(
                        buttonName: "Sign Up",
                        onTap: () {
                          if (!signUpController.formKey.currentState!
                              .validate()) {
                            return;
                          }
                          signUpController.signUpFun();
                          Get.to(const SignIn());
                        })
                    : const CircularProgressIndicator()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
