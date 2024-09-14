import 'dart:developer';

import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check Out",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment method",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                    onTap: () {
                      log("message");
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.credit_card),
                SizedBox(width: 10),
                Text("**** **** **** 4747")
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                    onTap: () {
                      log("message");
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alexandra Smith",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Cesu 31 k -2-5 st, SIA Chili",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Riga",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "LV-1012",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Latvia",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Options",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                    onTap: () {
                      log("message");
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.nordic_walking,color: Colors.grey,),
                    SizedBox(width: 10),
                    Text("I,'ll pic it up myself"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.directions_bike_rounded,color: Colors.grey),
                    SizedBox(width: 10),
                    Text("By courier"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.camera,color: Colors.grey),
                    SizedBox(width: 10),
                    Text("By Camera"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
