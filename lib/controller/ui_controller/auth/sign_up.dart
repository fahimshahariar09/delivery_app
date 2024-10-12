import 'package:delivery/controller/api_controller/auth/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conpasswordController = TextEditingController();
  RxBool isLoading = true.obs;

  signUpFun() {
    isLoading.value = true;
   SignUpService.signupservice(
        name: nameController.text,
        phone: phoneController.text,
        email: emailController.text,
        password: passwordController.text,
        conpassword: conpasswordController.text);
    isLoading.value = false;

  }

  @override
  void onInit() {
    nameController.text = "fahim";
    phoneController.text = "1254845253";
    emailController.text = "fahim@gmail.com";
    passwordController.text = "12345678";
    conpasswordController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    conpasswordController.dispose();
    super.dispose();
  }
}
