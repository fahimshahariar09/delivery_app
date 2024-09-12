import 'package:delivery/controller/ui_controller/vegetables/vegetables.dart';
import 'package:delivery/view/screen/vegetables/widget/vegetable_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({super.key});

  @override
  Widget build(BuildContext context) {
    VegetablesController vegetablesController = Get.put(VegetablesController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegetables"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Obx(() => vegetablesController.isLoading.isFalse
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ListView.builder(
                            // scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: vegetablesController.vegetableList.length,
                            itemBuilder: (context, index) {
                              var data =
                                  vegetablesController.vegetableList[index];
                              return VegetableCard(
                                image: '${data.imageurl}',
                                name: '${data.name}',
                                price: '${data.price}',
                              );
                            }),
                      ),
                    )
                  : CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
