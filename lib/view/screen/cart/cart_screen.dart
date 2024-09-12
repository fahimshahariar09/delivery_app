import 'package:delivery/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                          SizedBox(
                            height: 30
                          ),
                          CommonText(titel: "Purple Cauliflower",fSize: 20,fWeight: FontWeight.bold,fColor: Colors.purpleAccent,),
                          SizedBox(height: 10),
                          CommonText(titel: "1.85\$ / kg",fSize: 20,fWeight: FontWeight.bold,fColor: Colors.purpleAccent,),
                          SizedBox(height: 10),
                          CommonText(titel: "~ 150 gr / kg",fSize: 16,fWeight: FontWeight.bold,fColor: Colors.green,),
                          SizedBox(height: 20),
                          CommonText(titel: "Spain",fSize: 20,fWeight: FontWeight.bold,fColor: Colors.purpleAccent,),

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
