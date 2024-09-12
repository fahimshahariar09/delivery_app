import 'dart:convert';
import 'dart:developer';

import 'package:delivery/database/vegetables/vegetables.dart';
import 'package:delivery/model/vegetables/vegetables.dart';

class VegetablesService {
  static Future<List<VegetablesListModel>> vegetablesService() async {
    try {
      List<VegetablesListModel> data = [];
      for (var i in VegetablesList.vegetablelist['vegetableList'].toList()) {
        var decodeData =VegetablesListModel.formJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      return data;
    } catch (e) {
      log("error $e");
    }
    return [];
  }
}
