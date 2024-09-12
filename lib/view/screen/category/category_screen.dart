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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Obx(() => categoryController.isLoading.isFalse
                  ? Expanded(
                      child: GridView.builder(
                          itemCount: categoryController.categoryList.length,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            var data = categoryController.categoryList[index];
                            return Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "${data.image}",
                                      fit: BoxFit.cover,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${data.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                          SizedBox(height: 5),
                                          Text("${data.id}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  : CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
