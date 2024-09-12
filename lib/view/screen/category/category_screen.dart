import 'package:delivery/controller/ui_controller/category/category.dart';
import 'package:delivery/view/common_widget/common_text.dart';
import 'package:delivery/view/common_widget/common_text_field.dart';
import 'package:delivery/view/screen/vegetables/vegetables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Category",
          style: TextStyle(
            color: Colors.purple,
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
              const SizedBox(
                height: 10,
              ),
              const CommonText(
                titel: "Category",
                fSize: 18,
                fWeight: FontWeight.bold,
                fColor: Colors.purple,
              ),
              const SizedBox(height: 15),
              const CommonTextField(lText: "Search.."),
              const SizedBox(height: 20),
              Obx(() => categoryController.isLoading.isFalse
                  ? Expanded(
                      child: GridView.builder(
                          itemCount: categoryController.categoryList.length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            var data = categoryController.categoryList[index];
                            return InkWell(
                              onTap: () {
                                Get.to(Vegetables());
                              },
                              child: Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "${data.image}",
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${data.name}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "${data.id}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  : const CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
