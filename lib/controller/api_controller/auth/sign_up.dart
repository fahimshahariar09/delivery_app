import 'dart:developer';

class SignUpService {
  static Future signupservice() async {
    try {
      Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
