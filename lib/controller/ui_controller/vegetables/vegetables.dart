

import 'dart:developer';

import 'package:delivery/controller/api_controller/vegetables/vegetables.dart';
import 'package:delivery/model/vegetables/vegetables.dart';
import 'package:get/get.dart';

class VegetablesController extends GetxController{

  List<VegetablesListModel> vegetableList=[];
  RxBool isLoading =true.obs;
  RxInt i=0.obs;

  vegetableFun()async{
    isLoading.value=true;
    vegetableList = await VegetablesService.vegetablesService();
    isLoading.value=false;
  }
  addFun(){
    isLoading.value=true;
    log(".................");
    i++;
    isLoading.value=false;
    log("..........1111111111111.......");
  }
  @override
  void onInit() {
    vegetableFun();
    super.onInit();
  }
}