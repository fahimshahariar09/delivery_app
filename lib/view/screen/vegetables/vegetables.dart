import 'package:delivery/controller/ui_controller/vegetables/vegetables.dart';
import 'package:delivery/view/common_widget/common_text_field.dart';
import 'package:delivery/view/screen/vegetables/vegetables_detalis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({super.key});

  @override
  Widget build(BuildContext context) {
    VegetablesController vegetablesController = Get.put(VegetablesController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vegetables",
          style: TextStyle(
              fontSize: 18, color: Colors.purple, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Vegetables"),
                ],
              ),
              SizedBox(height: 10),
              CommonTextField(
                lText: "Search",
                icon: Icon(Icons.search),
              ),
              SizedBox(height: 20),
              Obx(() => vegetablesController.isLoading.isFalse
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                vegetablesController.vegetableList.length,
                            itemBuilder: (context, index) {
                              var data =
                                  vegetablesController.vegetableList[index];
                              return InkWell(
                                onTap: (){
                                  Get.to(VegetablesDetalis());
                                },
                                child: SizedBox(
                                  height: 120,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${data.imageurl}",
                                            height: 100,
                                            width: 177,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${data.name}",
                                                  style: TextStyle(
                                                      color: Colors.purple,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  "${data.price}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                // SizedBox(height: 20),
                                                // Row(
                                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                //   children: [
                                                //     InkWell(
                                                //       onTap: (){},
                                                //       child: Container(
                                                //         height: 40,
                                                //         width: 60,
                                                //         decoration: BoxDecoration(
                                                //             borderRadius: BorderRadius.circular(10),
                                                //             border: Border.all(color: Colors.black,width: 1),
                                                //             color: Colors.white),
                                                //         child: Icon(Icons.favorite_border),
                                                //       ),
                                                //     ),
                                                //     SizedBox(
                                                //       width: 10,
                                                //     ),
                                                //     InkWell(
                                                //       onTap: (){
                                                //         Get.to(VegetablesDetalis());
                                                //       },
                                                //       child: Container(
                                                //         height: 40,
                                                //         width: 60,
                                                //         decoration: BoxDecoration(
                                                //             borderRadius: BorderRadius.circular(10),
                                                //             color: Colors.green),
                                                //         child: Icon(Icons.shopping_cart_outlined),
                                                //       ),
                                                //     ),
                                                //   ],
                                                // ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  : const CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }

  // VegetableCard(
  // image: '${data.imageurl}',
  // name: '${data.name}',
  // price: '${data.price}',
  // )
}
