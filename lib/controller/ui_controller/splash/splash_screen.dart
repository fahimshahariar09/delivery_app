import 'package:delivery/view/screen/auth/sign_in.dart';
import 'package:get/get.dart';

class SplashScreenControlller extends GetxController {
  Future nextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(const SignIn());
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}
