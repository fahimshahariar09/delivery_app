import 'package:delivery/controller/ui_controller/vegetables/vegetables.dart';
import 'package:delivery/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VegetablesDetalis extends StatelessWidget {
  const VegetablesDetalis({super.key});


  @override
  Widget build(BuildContext context) {
    VegetablesController vegetablesController = Get.put(VegetablesController());
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/vegetable/vegetables.png",
                fit: BoxFit.cover,
                height: 350,
                width: MediaQuery.sizeOf(context).width,
              ),
              Positioned(
                  top: 320,
                  child: Container(
                    height: 500,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          CommonText(
                            titel: "Purple Cauliflower",
                            fSize: 20,
                            fWeight: FontWeight.bold,
                            fColor: Colors.purpleAccent,
                          ),
                          SizedBox(height: 10),
                          CommonText(
                            titel: "1.85\$ / kg",
                            fSize: 20,
                            fWeight: FontWeight.bold,
                            fColor: Colors.purpleAccent,
                          ),
                          SizedBox(height: 10),
                          CommonText(
                            titel: "~ 150 gr / kg",
                            fSize: 16,
                            fWeight: FontWeight.bold,
                            fColor: Colors.green,
                          ),
                          SizedBox(height: 20),
                          CommonText(
                            titel: "Spain",
                            fSize: 20,
                            fWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 10),
                          CommonText(
                            titel:
                                "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                            maxLine: 7,
                            fColor: Colors.purpleAccent.shade100,
                            fWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap: () {
                                      },
                                      child:
                                      Icon(Icons.minimize_outlined)),
                                  SizedBox(
                                      height: 15,
                                      width: 20,
                                      child: Center(child: Text("}"))),
                                  InkWell(
                                      onTap: () {
                                      },
                                      child: Icon(Icons.add))
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 45,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // SizedBox(width: 30,),
                                      Icon(Icons.shopping_cart_outlined),
                                      //SizedBox(width: 10,),
                                      Text("Buy Now")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
