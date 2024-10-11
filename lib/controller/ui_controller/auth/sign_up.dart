import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {

  final formKey = GlobalKey<FormState>();
  TextEditingController nameController =TextEditingController();
  TextEditingController phoneController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController conpasswordController =TextEditingController();
  RxBool isLoading = true.obs;
}
