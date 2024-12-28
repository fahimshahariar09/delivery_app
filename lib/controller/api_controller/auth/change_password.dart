import 'dart:developer';

class ChangePasswordService {
  static Future<bool> changepasswordService(
      {required String currentPassword,
      required String newPassword,
      required String confPassword}) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
