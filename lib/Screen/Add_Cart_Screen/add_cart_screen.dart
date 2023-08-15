import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../Model/zoomatoModel.dart';
import '../../controller/zoomato_controller.dart';

// ignore: camel_case_types
class add_cart_screen extends StatefulWidget {
  const add_cart_screen({super.key});

  @override
  State<add_cart_screen> createState() => _add_cart_screenState();
}

// ignore: camel_case_types
class _add_cart_screenState extends State<add_cart_screen> {
  Zoomato_controller controller = Get.put(Zoomato_controller());
  // ignore: prefer_typing_uninitialized_variables
  var img, img2, img3, img4, img5, disname, disname2, disname3, disname4, disname5, price, price2,
      // ignore: prefer_typing_uninitialized_variables
      price3, price4, price5, name, review, time, id1 = "1", id2 = "2", id3 = "3", id4 = "4";

  @override
  void initState() {
    Zoomato_Model m1 = Get.arguments;
    img = m1.img;
    img2 = m1.img2;
    img3 = m1.img3;
    img4 = m1.img4;
    img5 = m1.img5;
    disname = m1.disname;
    disname2 = m1.disname2;
    disname3 = m1.disname3;
    disname4 = m1.disname4;
    disname5 = m1.disname5;
    price = m1.price;
    price2 = m1.price2;
    price3 = m1.price3;
    price4 = m1.price4;
    price5 = m1.price5;
    name = m1.name;
    review = m1.review;
    time = m1.time;
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
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.red.shade800,
                    ),
                  ),
                ],
              ),
              Text("$name",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
              const SizedBox(
                height: 10,
              ),
              Text(
                "50% OFF up to ₹100",
                style: GoogleFonts.aBeeZee(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 95,
                  ),
                  Container(
                    height: 3.h,
                    width: 12.w,
                    decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 1,
                          ),
                          const Icon(Icons.star, size: 15, color: Colors.white),
                          Text(
                            "$review",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.5k ratings",
                    style: GoogleFonts.aBeeZee(),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 4.h,
                width: 49.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 3,
                      ),
                      Icon(Icons.timelapse,
                          size: 20, color: Colors.green.shade100),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("$time min - 1 Km",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white, letterSpacing: 0)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 10.h,
                width: 93.w,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3)],
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/food/mm.png'),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "$disname2",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    "$name",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 53),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star_half,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      " 72 rating",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 77),
                                  child: Text(
                                    "₹$price2 ",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100),
                                  child: SizedBox(
                                    height: 12.h,
                                    width: 53.w,
                                    child: Text(
                                      "descripton",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: Text(
                                    "-------------------------------------------------",
                                    style: GoogleFonts.aBeeZee(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 195),
                              child: Container(
                                height: 19.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("$img2"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                  backgroundColor: Colors.white,
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Container(
                                            height: 27.h,
                                            width: 95.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                    AssetImage("$img2"),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 220),
                                              child: Text(
                                                "$disname2",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 240),
                                              child: Text(
                                                "$name",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 260),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star_half,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(),
                                                child: Text(
                                                  " 72 rating",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 277),
                                              child: Text(
                                                "₹$price2",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 295),
                                              child: SizedBox(
                                                height: 12.h,
                                                width: 53.w,
                                                child: Text(
                                                  "descripton",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 320),
                                              child: Text(
                                                "-------------------------------------------------",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 340),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40.w,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  border:
                                                  Border.all(color: Colors.red),
                                                ),
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                          if (controller.number > 0) {
                                                            controller.number--;
                                                          }
                                                      },
                                                      icon: const Icon(
                                                        Icons.remove,
                                                        size: 20,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 18,
                                                    ),
                                                    Obx(() =>  Text(
                                                        "${controller.number.value}",
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight.w600),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        controller.number++;
                                                      },
                                                      icon: const Icon(Icons.add,
                                                          color: Colors.black),
                                                    ),

                                                  ],
                                                ),
                                              ),const SizedBox(width: 10,),
                                              InkWell(
                                                onTap: () {
                                                  Zoomato_Model m1 = Zoomato_Model(
                                                      name: name,
                                                      img2: img2,
                                                      time: time,
                                                      disname2: disname2,
                                                      price2: price2,
                                                      id: id1,
                                                      review: review);
                                                  Get.toNamed('cart',arguments: m1);
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50.w,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
                                                  child:
                                                  Center(
                                                    child: Text("ADD ITM $price2", style: GoogleFonts.aBeeZee(
                                                        fontSize: 15,color: Colors.white
                                                    ),),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 215, top: 130),
                                child: Container(
                                  height: 5.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red.shade100),
                                  child: const Center(
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 223, top: 175),
                              child: Text(
                                "Cutomisable",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.grey.shade500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "$disname3",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    "$name",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 53),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star_half,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      " 72 rating",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 77),
                                  child: Text(
                                    "₹$price3 ",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100),
                                  child: SizedBox(
                                    height: 12.h,
                                    width: 53.w,
                                    child: Text(
                                      "descripton",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: Text(
                                    "-------------------------------------------------",
                                    style: GoogleFonts.aBeeZee(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 195),
                              child: Container(
                                height: 19.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("$img3"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                  backgroundColor: Colors.white,
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Container(
                                            height: 27.h,
                                            width: 95.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                    AssetImage("$img3"),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 220),
                                              child: Text(
                                                "$disname3",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 240),
                                              child: Text(
                                                "$name",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 260),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star_half,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(),
                                                child: Text(
                                                  " 72 rating",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 277),
                                              child: Text(
                                                "₹$price3",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 295),
                                              child: SizedBox(
                                                height: 12.h,
                                                width: 53.w,
                                                child: Text(
                                                  "descripton",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 320),
                                              child: Text(
                                                "-------------------------------------------------",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 340),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40.w,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  border:
                                                  Border.all(color: Colors.red),
                                                ),
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                          if (controller.number2 > 0) {
                                                            controller.number2--;
                                                          }
                                                      },
                                                      icon: const Icon(
                                                        Icons.remove,
                                                        size: 20,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 18,
                                                    ),
                                                    Obx(() =>  Text(
                                                        "${controller.number2.value}",
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight.w600),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        controller.number2++;
                                                      },
                                                      icon: const Icon(Icons.add,
                                                          color: Colors.black),
                                                    ),

                                                  ],
                                                ),
                                              ),const SizedBox(width: 10,),
                                              InkWell(onTap: () {
                                                Zoomato_Model m1 = Zoomato_Model(
                                                    name: name,
                                                    img3: img3,
                                                    time: time,
                                                    disname3: disname3,
                                                    price3: price3,
                                                    id: id2,
                                                    review: review);
                                                Get.toNamed('cart',arguments: m1);
                                              },
                                                child: Container(
                                                  height: 50,
                                                  width: 50.w,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
                                                  child:
                                                  Center(
                                                    child: Text("ADD ITM $price3", style: GoogleFonts.aBeeZee(
                                                        fontSize: 15,color: Colors.white
                                                    ),),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 215, top: 130),
                                child: Container(
                                  height: 5.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red.shade100),
                                  child: const Center(
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 223, top: 175),
                              child: Text(
                                "Cutomisable",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.grey.shade500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "$disname4",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    "$name",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 53),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star_half,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      " 72 rating",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 77),
                                  child: Text(
                                    "₹$price4",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100),
                                  // ignore: sized_box_for_whitespace
                                  child: Container(
                                    height: 12.h,
                                    width: 53.w,
                                    child: Text(
                                      "descripton",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: Text(
                                    "-------------------------------------------------",
                                    style: GoogleFonts.aBeeZee(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 195),
                              child: Container(
                                height: 19.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("$img4"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                  backgroundColor: Colors.white,
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Container(
                                            height: 27.h,
                                            width: 95.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                    AssetImage("$img4"),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 220),
                                              child: Text(
                                                "$disname4",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 240),
                                              child: Text(
                                                "$name",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 260),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star_half,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(),
                                                child: Text(
                                                  " 72 rating",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 277),
                                              child: Text(
                                                "₹$price4",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 295),
                                              child: SizedBox(
                                                height: 12.h,
                                                width: 53.w,
                                                child: Text(
                                                  "descripton",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 320),
                                              child: Text(
                                                "-------------------------------------------------",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 340),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40.w,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  border:
                                                  Border.all(color: Colors.red),
                                                ),
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                          if (controller.number3 > 0) {
                                                            controller.number3--;
                                                          }
                                                      },
                                                      icon: const Icon(
                                                        Icons.remove,
                                                        size: 20,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 18,
                                                    ),
                                                    Obx(
                                                      () =>  Text(
                                                        "${controller.number3.value}",
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight.w600),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        controller.number3++;
                                                      },
                                                      icon: const Icon(Icons.add,
                                                          color: Colors.black),
                                                    ),

                                                  ],
                                                ),
                                              ),const SizedBox(width: 10,),
                                              InkWell(onTap: () {
                                                Zoomato_Model m1 = Zoomato_Model(
                                                    name: name,
                                                    img4: img4,
                                                    time: time,
                                                    disname4: disname4,
                                                    price4: price4,
                                                    id: id3,
                                                    review: review);
                                                Get.toNamed('cart',arguments: m1);
                                              },
                                                child: Container(
                                                  height: 50,
                                                  width: 50.w,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
                                                  child:
                                                  Center(
                                                    child: Text("ADD ITM $price4", style: GoogleFonts.aBeeZee(
                                                        fontSize: 15,color: Colors.white
                                                    ),),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 215, top: 130),
                                child: Container(
                                  height: 5.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red.shade100),
                                  child: const Center(
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 223, top: 175),
                              child: Text(
                                "Cutomisable",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.grey.shade500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "$disname5",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    "$name",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 53),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const Icon(
                                    Icons.star_half,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      " 72 rating",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 77),
                                  child: Text(
                                    "₹$price5",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100),
                                  child: SizedBox(
                                    height: 12.h,
                                    width: 53.w,
                                    child: Text(
                                      "descripton",
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: Text(
                                    "-------------------------------------------------",
                                    style: GoogleFonts.aBeeZee(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 195),
                              child: Container(
                                height: 19.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("$img5"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                  backgroundColor: Colors.white,
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Container(
                                            height: 27.h,
                                            width: 95.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                        AssetImage("$img5"),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 220),
                                              child: Text(
                                                "$disname5",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 240),
                                              child: Text(
                                                "$name ",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 260),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const Icon(
                                                Icons.star_half,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(),
                                                child: Text(
                                                  " 72 rating",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 277),
                                              child: Text(
                                                "₹$price5",
                                                style: GoogleFonts.aBeeZee(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 295),
                                              child: SizedBox(
                                                height: 12.h,
                                                width: 53.w,
                                                child: Text(
                                                  "descripton",
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 320),
                                              child: Text(
                                                "-------------------------------------------------",
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 340),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40.w,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border:
                                                      Border.all(color: Colors.red),
                                                ),
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                          if (controller.number4 > 0) {
                                                            controller.number4--;
                                                          }
                                                      },
                                                      icon: const Icon(
                                                        Icons.remove,
                                                        size: 20,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 18,
                                                    ),
                                                    Obx(
                                                      () =>  Text(
                                                        "${controller.number4.value}",
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        controller.number4++;
                                                      },
                                                      icon: const Icon(Icons.add,
                                                          color: Colors.black),
                                                    ),

                                                  ],
                                                ),
                                              ),const SizedBox(width: 10,),
                                              InkWell(
                                                onTap: () {
                                                  Zoomato_Model m1 = Zoomato_Model(
                                                      name: name,
                                                      img5: img5,
                                                      time: time,
                                                      disname5: disname5,
                                                      price5: price5,
                                                      id: id4,
                                                      review: review);
                                                  Get.toNamed('cart',arguments: m1);
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50.w,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
                                                  child:
                                                  Center(
                                                    child: Text("ADD ITM $price4", style: GoogleFonts.aBeeZee(
                                                        fontSize: 15,color: Colors.white
                                                    ),),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 215, top: 130),
                                child: Container(
                                  height: 5.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red.shade100),
                                  child: const Center(
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 223, top: 175),
                              child: Text(
                                "Cutomisable",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.grey.shade500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
