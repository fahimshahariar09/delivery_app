
import 'package:delivery/controller/api_controller/category/category.dart';
import 'package:delivery/model/category.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<CategoryListModel> categoryList = [];
  RxBool isLoading = true.obs;

  categoryFun() async {
    isLoading.value =true;
   categoryList = await CategoryService.category();
    isLoading.value =false;
  }

  @override
  void onInit() {
    categoryFun();
    super.onInit();
  }
}
