import 'dart:developer';

class VerificationService {
  static Future verificationService({
    required String num,
    required String num1,
    required String num2,
    required String num3,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
