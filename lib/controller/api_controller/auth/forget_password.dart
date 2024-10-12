import 'dart:developer';

class ForgetPasswordService {
  static Future forgetpasswordService() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
