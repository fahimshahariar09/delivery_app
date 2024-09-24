
import 'dart:developer';

import 'package:delivery/controller/ui_controller/add_to_cart/add_to_cart.dart';
import 'package:delivery/view/common_widget/common_button.dart';
import 'package:delivery/view/common_widget/common_text.dart';
import 'package:delivery/view/screen/check_out/check_out.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddToCartController addToCartController = Get.put(AddToCartController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add To Cart",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => addToCartController.isLoading.isFalse
                ? Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: addToCartController.addtocartList.length,
                        itemBuilder: (context, index) {
                          var data = addToCartController.addtocartList[index];
                          return Card(
                            elevation: 2,
                            child: SizedBox(
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "${data.image}",
                                          height: 100,
                                          width: 110,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          CommonText(
                                            titel: "${data.name}",
                                            fSize: 18,
                                            fWeight: FontWeight.w500,
                                          ),
                                          CommonText(
                                            titel: "${data.price}",
                                            fSize: 16,
                                            fWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      addToCartController.deletedFun();
                                      log("remove");
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                : const CircularProgressIndicator()),
            const SizedBox(
              height: 20,
            ),
            CommonButton(buttonName: "Buy Now", buttonWidth: 150, onTap: () {
              Get.to(CheckOut());
            })
          ],
        ),
      ),
    );
  }
}
