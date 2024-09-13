import 'dart:convert';
import 'dart:developer';

import 'package:delivery/database/add_to_cart.dart';
import 'package:delivery/model/add_to_cart.dart';

class AddToCartService {
  static Future<List<AddToCartListModel>> addtocartService() async {
    try {

      List<AddToCartListModel> data =[];

      for(var i in AddToCartList.addtocartList['addtocartList'].toList()){
        var decodeData = AddToCartListModel.formJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      return data;
    } catch (e) {
      log("error $e");
    }
    return [];
  }
}
