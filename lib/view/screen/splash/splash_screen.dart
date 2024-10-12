import 'package:delivery/constants/splash.dart';
import 'package:delivery/controller/ui_controller/splash/splash_screen.dart';
import 'package:delivery/view/common_widget/common_text.dart';
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
                    SizedBox(height: 10),
                    CommonText(
                      titel: "Vegetables Market App",
                      fSize: 18,
                      fWeight: FontWeight.w600,
                      fColor: Colors.red.shade200,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
