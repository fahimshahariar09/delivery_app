import 'dart:developer';

class SignInService {
  static Future signinService({required String email,required String password}) async {
    try {
      Future.delayed(Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
