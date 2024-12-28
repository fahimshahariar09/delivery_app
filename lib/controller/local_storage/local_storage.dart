import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalData{

  final storage = FlutterSecureStorage();

  // Write Data in Local Storage
  writeData({required String key, required String value}) async {
    await storage.write(
      key: key,
      value: value,
    );
    debugPrint("Data Stored Successfully.");
  }

  // Read Data in Local Storage
  Future<String> readData({required String key}) async {
    var a = await storage.read(key: key);
    debugPrint("Local Data :  $a");
    return a ?? "";
  }

  // Read All Data in Local Storage
  Future<Map<String, String>> readAllData() async {
    var a = await storage.readAll();
    debugPrint("All Local Data :  $a");
    return a;
  }

  // Delete Specific Data from Local Storage
  deleteData({required String key}) async {
    await storage.delete(key: key);
    debugPrint("Local Data Deleted.!");
  }

  // Delete All Data from Local Storage
  deleteAllData() async {
    await storage.deleteAll();
    debugPrint("All Local Data Deleted..!!");
  }

}