import 'package:delivery/controller/ui_controller/auth/forget_password.dart';
import 'package:delivery/view/screen/auth/verification.dart';
import 'package:delivery/view/screen/auth/widget/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPasswordController =
        Get.put(ForgetPasswordController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              EmailTextField(
                  emailController: forgetPasswordController.emailController),
              const SizedBox(height: 15),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: (){
                        Get.to(const Verification());
                      },
                      child: const Text("Next")),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                  "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.")

            ],
          ),
        ),
      ),
    );
  }
}
