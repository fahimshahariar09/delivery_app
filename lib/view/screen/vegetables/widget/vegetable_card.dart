import 'package:flutter/material.dart';

class VegetableCard extends StatelessWidget {
  const VegetableCard(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      });

  final String image;
  final String name;
  final String price;
  //final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 160,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  height: 128,
                  width: 177,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black,width: 1),
                                  color: Colors.white),
                              child: const Icon(Icons.favorite_border),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green),
                              child: const Icon(Icons.shopping_cart_outlined),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
