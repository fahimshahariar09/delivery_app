import 'dart:developer';

class SignUpService {
  static Future signupservice({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String conpassword,
  }) async {
    try {
      Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
