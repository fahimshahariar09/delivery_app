import 'package:delivery/controller/api_controller/auth/forget_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  RxBool isLoading = true.obs;

  forgetpasswordFun() async {
    isLoading.value = true;
    bool status = await ForgetPasswordService.forgetpasswordService(
        email: emailController.text);
    isLoading.value = true;

    if (status) {
      return;
    }
  }

  @override
  void onInit() {
    emailController.text = "fahim@gmail.com";
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
