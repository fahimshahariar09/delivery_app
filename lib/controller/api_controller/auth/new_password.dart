import 'dart:developer';

class NewPasswordService {
  static Future newpasswordService({required String oldpassword,required String newpassword,required String newconpassword,}) async {
    try {

      await Future.delayed(const Duration(seconds: 3));
      return true;

    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
