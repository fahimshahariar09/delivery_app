import 'package:delivery/controller/ui_controller/auth/verification.dart';
import 'package:delivery/view/common_widget/common_button.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  VerifyField(
                    verifiyController: verificationController.numController,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  VerifyField(
                    verifiyController: verificationController.num1Controller,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  VerifyField(
                    verifiyController: verificationController.num2Controller,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  VerifyField(
                    verifiyController: verificationController.num3Controller,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Confram",)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
