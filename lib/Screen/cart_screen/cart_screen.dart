import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../Model/zoomatoModel.dart';

// ignore: camel_case_types
class cart_screen extends StatefulWidget {
  const cart_screen({super.key});

  @override
  State<cart_screen> createState() => _cart_screenState();
}
// ignore: camel_case_types
class _cart_screenState extends State<cart_screen> {
  List cartList = [];
  // ignore: prefer_typing_uninitialized_variables
  var img, img2, disname2, price2, name, review, time, id2, id5;

  @override
  void initState() {
    Zoomato_Model m1 = Get.arguments;
    if (m1.id == "1") {
      Zoomato_Model m1 = Get.arguments;
      img2 = m1.img2;
      name = m1.name;
      disname2 = m1.disname2;
      price2 = m1.price2;
      review = m1.review;
      time = m1.time;
      id2 = m1.id;
      cartList.add(m1);
    } else if (m1.id == "2") {
      Zoomato_Model m1 = Get.arguments;
      img2 = m1.img3;
      name = m1.name;
      disname2 = m1.disname3;
      price2 = m1.price3;
      review = m1.review;
      time = m1.time;
      id2 = m1.id;
      cartList.add(m1);
    } else if (m1.id == "3") {
      Zoomato_Model m1 = Get.arguments;
      img2 = m1.img4;
      name = m1.name;
      disname2 = m1.disname4;
      price2 = m1.price4;
      review = m1.review;
      time = m1.time;
      id2 = m1.id;
      cartList.add(m1);
    } else {
      Zoomato_Model m1 = Get.arguments;
      img2 = m1.img5;
      name = m1.name;
      disname2 = m1.disname5;
      price2 = m1.price5;
      review = m1.review;
      time = m1.time;
      id2 = m1.id;
      cartList.add(m1);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "ITM ADD",
                    style: GoogleFonts.alice(
                        fontSize: 20,
                        letterSpacing: 1,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 9.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "$img2",
                                  ),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$disname2",
                                style: GoogleFonts.mada(color: Colors.black),
                              ),
                              Text(
                                "$name",
                                style: GoogleFonts.mada(color: Colors.black),
                              ),
                              Text(
                                "₹$price2",
                                style: GoogleFonts.mada(color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                              "----------------------------------------------------------",style: TextStyle(fontSize: 15,letterSpacing: 1),)
                        ],
                      )
                    ],
                  );
                },
                itemCount: cartList.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
