import 'dart:developer';

class NewPasswordService {
  static Future newpasswordService() async {
    try {

      await Future.delayed(const Duration(seconds: 3));
      return true;

    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
