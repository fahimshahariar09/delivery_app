

import 'package:delivery/controller/api_controller/vegetables/vegetables.dart';
import 'package:delivery/model/vegetables/vegetables.dart';
import 'package:get/get.dart';

class VegetablesController extends GetxController{

  List<VegetablesListModel> vegetableList=[];
  RxBool isLoading =true.obs;

  vegetableFun()async{
    isLoading.value=true;
    vegetableList = await VegetablesService.vegetablesService();
    isLoading.value=false;
  }
  @override
  void onInit() {
    vegetableFun();
    super.onInit();
  }
}