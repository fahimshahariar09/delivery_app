import 'package:delivery/view/screen/auth/widget/email_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // EmailTextField(emailController: emailController)
          Text(
              "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number."),
        ],
      ),
    );
  }
}
