import 'dart:developer';

import 'package:delivery/controller/ui_controller/add_to_cart/add_to_cart.dart';
import 'package:delivery/view/common_widget/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddToCartController addToCartController = Get.put(AddToCartController());
    return Scaffold(
        appBar: AppBar(
          title: Text("Add To Cart",),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: addToCartController.addtocartList.length,
                  itemBuilder: (context, index) {
                    var data = addToCartController.addtocartList[index];
                    return Card(
                      elevation: 2,
                      child: SizedBox(
                        height: 100,
                        child: Row(
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
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("${data.name}"),
                                          Text("${data.price}"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {

                                      }, icon: Icon(Icons.delete)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButton(buttonName: "Cancel",buttonWidth: 150, onTap: (){}),
                CommonButton(buttonName: "Buy Now", buttonWidth: 150, onTap: () {}),
              ],
            )
          ],
        ));
  }
}
