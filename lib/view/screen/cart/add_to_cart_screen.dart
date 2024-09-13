import 'package:delivery/controller/ui_controller/add_to_cart/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddToCartController addToCartController = Get.put(AddToCartController());
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: SafeArea(
        child: Obx(() => addToCartController.isLoading.isFalse
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: addToCartController.addtocartList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 150,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "${addToCartController.addtocartList[index].image}",
                                  height: 10,
                                  width: 100,
                                ),
                                Column(
                                  children: [
                                    Text(
                                        "${addToCartController.addtocartList[index].name}"),
                                    Text(
                                        "${addToCartController.addtocartList[index].price}"),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
            : const CircularProgressIndicator()),
      ),
    );
  }
}
