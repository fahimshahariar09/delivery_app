

import 'package:delivery/view/screen/bottom_navi_bar/bottom_navi_bar.dart';
import 'package:get/get.dart';

class SplashScreenControlller extends GetxController{


  Future nextPage()async{
    await Future.delayed(Duration(seconds: 3));
    Get.to(BottomNaviBar());
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }

}