import 'package:delivery/controller/api_controller/auth/new_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  TextEditingController oldpassController = TextEditingController();
  TextEditingController newpassController = TextEditingController();
  TextEditingController newconpassController = TextEditingController();
  RxBool isLoading = true.obs;

  newpasswordFun() async {
    isLoading.value = true;
    bool status = await NewPasswordService.newpasswordService(
        oldpassword: oldpassController.text,
        newpassword: newpassController.text,
        newconpassword: newconpassController.text);
    isLoading.value = false;

    if (status) {
      return;
    }
  }

  @override
  void onInit() {
    oldpassController.text = "12345678";
    newpassController.text = "123456789";
    newconpassController.text = "123456789";
    super.onInit();
  }

  @override
  void dispose() {
    oldpassController.dispose();
    newpassController.dispose();
    newconpassController.dispose();
    super.dispose();
  }
}
