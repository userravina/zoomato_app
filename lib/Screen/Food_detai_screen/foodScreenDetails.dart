
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:zoomato_app/Model/zoomatoModel.dart';
import '../../controller/zoomato_controller.dart';

// ignore: camel_case_types
class Food_details extends StatefulWidget {
  const Food_details({super.key});

  @override
  State<Food_details> createState() => _Food_detailsState();
}

// ignore: camel_case_types
class _Food_detailsState extends State<Food_details> {
  Zoomato_controller controller = Get.put(Zoomato_controller());
  // ignore: prefer_typing_uninitialized_variables
  var img, img2, img3, img4, img5, disname, disname2, disname3, disname4, disname5, price, price2, price3, price4, price5, name, review, time;

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
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 5.5.h,
                    width: 93.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 3)
                        ]),
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
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
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "$name",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(children: [
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.sort),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sort",
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w600),
                        )
                      ]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(text: "Award Winners", w: 37.w),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(text: "Jain", w: 14.w),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(text: "Nearest", w: 24.w),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(text: "Pure Veg", w: 24.w),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(text: "Cuisines", w: 24.w),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 15.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.Foodlist.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed('Food',
                            arguments: controller.Foodlist[index]);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 27.w,
                            height: 22.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "${controller.Foodlist[index].img}"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text(
                            "${controller.Foodlist[index].name}",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                            onTap: () {
                              Zoomato_Model m1 = Zoomato_Model(
                                  img: img,
                                  name: name,
                                  img5: img5,
                                  img4: img4,
                                  img3: img3,
                                  img2: img2,
                                  disname: disname,
                                  price: price,
                                  time: time,
                                  disname2: disname2,
                                  disname3: disname3,
                                  disname4: disname4,
                                  disname5: disname5,
                                  price2: price2,
                                  price3: price3,
                                  price4: price4,
                                  price5: price5,
                                  review: review);

                              Get.toNamed('add', arguments: m1);
                            },
                            child: buildContaine(
                                name: "$name",
                                img: "$img2",
                                Price: "$price2",
                                Disname: "$disname2")),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () {
                              Zoomato_Model m1 = Zoomato_Model(
                                  img: img,
                                  name: name,
                                  img5: img5,
                                  img4: img4,
                                  img3: img3,
                                  img2: img2,
                                  disname: disname,
                                  price: price,
                                  time: time,
                                  disname2: disname2,
                                  disname3: disname3,
                                  disname4: disname4,
                                  disname5: disname5,
                                  price2: price2,
                                  price3: price3,
                                  price4: price4,
                                  price5: price5,
                                  review: review);

                              Get.toNamed('add', arguments: m1);
                            },
                            child: buildContaine(
                                name: "$name",
                                img: "$img3",
                                Price: "$price3",
                                Disname: "$disname3")),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () {
                              Zoomato_Model m1 = Zoomato_Model(
                                  img: img,
                                  name: name,
                                  img5: img5,
                                  img4: img4,
                                  img3: img3,
                                  img2: img2,
                                  disname: disname,
                                  price: price,
                                  time: time,
                                  disname2: disname2,
                                  disname3: disname3,
                                  disname4: disname4,
                                  disname5: disname5,
                                  price2: price2,
                                  price3: price3,
                                  price4: price4,
                                  price5: price5,
                                  review: review);

                              Get.toNamed('add', arguments: m1);
                            },
                            child: buildContaine(
                                name: "$name",
                                img: "$img4",
                                Price: "$price4",
                                Disname: "$disname4")),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () {
                              Zoomato_Model m1 = Zoomato_Model(
                                  img: img,
                                  name: name,
                                  img5: img5,
                                  img4: img4,
                                  img3: img3,
                                  img2: img2,
                                  disname: disname,
                                  price: price,
                                  time: time,
                                  disname2: disname2,
                                  disname3: disname3,
                                  disname4: disname4,
                                  disname5: disname5,
                                  price2: price2,
                                  price3: price3,
                                  price4: price4,
                                  price5: price5,
                                  review: review);

                              Get.toNamed('add', arguments: m1);
                            },
                            child: buildContaine(
                                name: "$name",
                                img: "$img5",
                                Price: "$price5",
                                Disname: "$disname5  ")),
                        const SizedBox(
                          height: 20,
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

  // ignore: non_constant_identifier_names
  Container buildContaine({Disname, name, Price, img}) {
    return Container(
      width: 93.w,
      height: 36.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3)],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            height: 20.h,
            width: 93.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("$img"), fit: BoxFit.cover),
              color: Colors.grey.shade800,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  "$Disname",
                  style: GoogleFonts.aBeeZee(fontSize: 20),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 10, top: 3),
                child:
                    Icon(Icons.favorite_border, color: Colors.grey, size: 30),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  "$name ",
                  style: GoogleFonts.aBeeZee(fontSize: 15),
                ),
              ),
              Text(
                "₹$Price ",
                style: GoogleFonts.aBeeZee(fontSize: 15),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  "$time",
                  style: GoogleFonts.aBeeZee(fontSize: 15),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 3.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Row(
                      children: [const SizedBox(width: 1,),
                        const Icon(Icons.star,size: 15,color: Colors.white),
                        Text(
                          "$review",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "----------------------------------------------",
                  style: GoogleFonts.aBeeZee(fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 10),
                child: Text(
                  "50% OFF up to 100",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 13, color: Colors.blue.shade700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildContainer({w, text}) {
    return Container(
      height: 4.h,
      width: w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 5,
          ),
          Text(
            "$text",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
