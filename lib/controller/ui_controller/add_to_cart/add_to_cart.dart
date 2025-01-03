
import 'package:delivery/controller/api_controller/vegetables/add_to_cart.dart';
import 'package:delivery/model/add_to_cart.dart';
import 'package:get/get.dart';

class AddToCartController extends GetxController {
  List<AddToCartListModel> addtocartList = [];
  List<AddToCartListModel> addtocart = [];
  RxBool isLoading = false.obs;

  addtocartFun() async {
    isLoading.value = true;
    addtocartList = await AddToCartService.addtocartService();
    isLoading.value = false;
  }

  deletedFun(){
    isLoading.value = true;
    addtocartList =addtocart;
    isLoading.value = false;
  }

  @override
  void onInit() {
    addtocartFun();
    super.onInit();
  }
}
