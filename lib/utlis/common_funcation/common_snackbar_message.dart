
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackBarMessage{
  static noInternetConnection(){
    Get.snackbar("you are offline", "check internet connection",
    backgroundColor: Colors.red.shade50,
      colorText: Colors.redAccent,
      snackStyle: SnackStyle.FLOATING,
      duration: Duration(seconds: 2),
    );
  }
}