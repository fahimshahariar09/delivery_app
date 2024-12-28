import 'dart:convert';
import 'dart:io';
import 'package:delivery/controller/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ProfileUpdateService {
  static Future<bool> profileUpdateService(
      {required String name,
      required String address,
      required File image}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      var data = {
        "id": 4,
        "name": "fahim",
        "username": null,
        "email": "classic@gmail.com",
        "phone": "01705021098",
        "address": address,
        "Profile_image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ530QmZxSQdjIVUK53CXis8gnzUG5m7Zsupg&s",
        "Date": "14 May 2024"
      };

      await LocalData().writeData(key: "userInfo", value: jsonEncode(data));
      await EasyLoading.showSuccess("Success");
      return true;
    } catch (e) {
      debugPrint("Error : $e");
    }
    await EasyLoading.showError("Something went wrong..!!");
    return false;
  }
}
