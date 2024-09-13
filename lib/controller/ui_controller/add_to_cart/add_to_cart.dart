
import 'dart:developer';

import 'package:delivery/controller/api_controller/vegetables/add_to_cart.dart';
import 'package:delivery/model/add_to_cart.dart';
import 'package:get/get.dart';

class AddToCartController extends GetxController{

  List<AddToCartListModel> addtocartList =[];
  RxBool isLoading =false.obs;

  addtocartFun()async{
    log("...............ssssssssssss..............");
    isLoading.value=true;
    addtocartList = await AddToCartService.addtocartService();
    isLoading.value=false;
    log("...............eeeeeeeeeeeee..............");

  }

  @override
  void onInit() {
    addtocartFun();
    super.onInit();
  }

}