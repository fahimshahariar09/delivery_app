import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackBarMessage {
  static noInternetConnection() {
    Get.snackbar(
      "you are offline",
      "check internet connection",
      backgroundColor: Colors.red.shade50,
      colorText: Colors.redAccent,
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(seconds: 2),
      overlayBlur: 5,
      icon: const Icon(
        Icons.wifi_off_outlined,
        color: Colors.red,
      ),
      snackPosition: SnackPosition.TOP,
    );
  }

  static errorMessage({String? titel, required String text}) {
    Get.snackbar(
      titel ?? "message",
      text,
      backgroundColor: Colors.red.shade50,
      colorText: Colors.redAccent,
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(seconds: 2),
      overlayBlur: 5,
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      snackPosition: SnackPosition.TOP,
    );
  }

  static successMessage({String? titel, required String text, IconData? icon}) {
    Get.snackbar(titel ?? "successful", text,
        backgroundColor: Colors.red.shade50,
        colorText: Colors.redAccent,
        snackStyle: SnackStyle.FLOATING,
        duration: const Duration(seconds: 2),
        overlayBlur: 5,
        icon: const Icon(
          Icons.verified_user_sharp,
          color: Colors.white,
        ));
  }
}
