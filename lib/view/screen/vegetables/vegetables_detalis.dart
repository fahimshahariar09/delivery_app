import 'package:delivery/view/common_widget/common_button.dart';
import 'package:delivery/view/common_widget/common_text.dart';
import 'package:delivery/view/screen/cart/add_to_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VegetablesDetalis extends StatelessWidget {
  const VegetablesDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vegetable Detalis",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const CommonText(
                titel: "Image",
                fWeight: FontWeight.w600,
                fSize: 18,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            child: SizedBox(
                              height: 110,
                              width: 130,
                              child: Image.asset(
                                "assets/vegetable/vegetables.png",
                                // fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonText(
                        titel: "Purple Cauliflower",
                        fSize: 20,
                        fWeight: FontWeight.bold,
                        fColor: Colors.purpleAccent,
                      ),
                      const SizedBox(height: 10),
                      const CommonText(
                        titel: "1.85\$ / kg",
                        fSize: 20,
                        fWeight: FontWeight.bold,
                        fColor: Colors.purpleAccent,
                      ),
                      const SizedBox(height: 10),
                      const CommonText(
                        titel: "~ 150 gr / kg",
                        fSize: 16,
                        fWeight: FontWeight.bold,
                        fColor: Colors.green,
                      ),
                      const SizedBox(height: 20),
                      const CommonText(
                        titel: "Spain",
                        fSize: 20,
                        fWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      CommonText(
                        titel:
                            "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                        maxLine: 7,
                        fColor: Colors.purpleAccent.shade100,
                        fWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.remove)),
                               Container(
                                  height: 20,
                                  width: 20,
                                  color: Colors.grey,
                                  child: Center(child: Text("1"))),
                              InkWell(onTap: () {}, child: const Icon(Icons.add))
                            ],
                          ),
                          CommonButton(
                              buttonName: "Add To Cart",
                              buttonWidth: 150,
                              onTap: () {
                                Get.to(const AddToCartScreen());
                              })
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(height: 30),
// CommonText(
// titel: "Purple Cauliflower",
// fSize: 20,
// fWeight: FontWeight.bold,
// fColor: Colors.purpleAccent,
// ),
// SizedBox(height: 10),
// CommonText(
// titel: "1.85\$ / kg",
// fSize: 20,
// fWeight: FontWeight.bold,
// fColor: Colors.purpleAccent,
// ),
// SizedBox(height: 10),
// CommonText(
// titel: "~ 150 gr / kg",
// fSize: 16,
// fWeight: FontWeight.bold,
// fColor: Colors.green,
// ),
// SizedBox(height: 20),
// CommonText(
// titel: "Spain",
// fSize: 20,
// fWeight: FontWeight.bold,
// ),
// SizedBox(height: 10),
// CommonText(
// titel:
// "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
// maxLine: 7,
// fColor: Colors.purpleAccent.shade100,
// fWeight: FontWeight.w400,
// ),
// SizedBox(height: 20),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// InkWell(
// onTap: () {},
// child: Icon(Icons.minimize_outlined)),
// SizedBox(
// height: 15,
// width: 20,
// child: Center(child: Text("1"))),
// InkWell(onTap: () {}, child: Icon(Icons.add))
// ],
// ),
// CommonButton(buttonName: "Add To Cart",buttonWidth: 150, onTap: (){
// Get.to(AddToCartScreen());
// })
// ],
// )
// ],
// ),
