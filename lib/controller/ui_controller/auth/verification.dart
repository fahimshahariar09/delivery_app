import 'package:delivery/controller/api_controller/auth/verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  TextEditingController numController = TextEditingController();
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();
  RxBool isLoading = true.obs;

  verifyFun() async {
    isLoading.value = true;
    bool status = await VerificationService.verificationService(
        num: numController.text,
        num1: num1Controller.text,
        num2: num2Controller.text,
        num3: num3Controller.text);
    isLoading.value = false;
  }
}
