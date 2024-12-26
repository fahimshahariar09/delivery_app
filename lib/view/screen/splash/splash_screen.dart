import 'package:delivery/constants/splash.dart';
import 'package:delivery/controller/ui_controller/splash/splash_screen.dart';
import 'package:delivery/view/common_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenControlller>(
        init: SplashScreenControlller(),
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        Appimages.shop,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextWidget(
                      text: "Vegetables Market App",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontColor: Colors.red.shade200,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
