import 'package:delivery/controller/ui_controller/auth/verification.dart';
import 'package:delivery/view/screen/auth/widget/verify_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationController verificationController =
        Get.put(VerificationController());
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              VerifyField(
                verifiyController: verificationController.numController,
              ),
              VerifyField(
                verifiyController: verificationController.num1Controller,
              ),
              VerifyField(
                verifiyController: verificationController.num2Controller,
              ),
              VerifyField(
                verifiyController: verificationController.num3Controller,
              ),
            ],
          )
        ],
      ),
    );
  }
}
