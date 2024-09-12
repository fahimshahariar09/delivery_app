import 'dart:convert';
import 'dart:developer';

import 'package:delivery/database/category.dart';
import 'package:delivery/model/category.dart';

class CategoryService {
  static Future<List<CategoryListModel>> category() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      List<CategoryListModel> data =[];
     for(var  i in CategoryList.categoryList['categoryList'].toList()){
       var decodeData = CategoryListModel.formJson(jsonDecode(jsonEncode(i)));
       data.add(decodeData);
     }
     return data;
    } catch (e) {
      log("error :$e");
    }
    return [];
  }
}
