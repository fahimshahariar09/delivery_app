import 'package:delivery/controller/ui_controller/category/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => categoryController.isLoading.isFalse
                ? Expanded(
                    child: GridView.builder(
                        itemCount: categoryController.categoryList.length,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          var data = categoryController.categoryList[index];
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            //color: Colors.green,
                            child: Column(
                              children: [
                                Image.asset(
                                  "${data.image}",
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                    "${categoryController.categoryList[index].name}"),
                              ],
                            ),
                          );
                        }),
                  )
                : CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
