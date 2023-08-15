
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../controller/zoomato_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Zoomato_controller controller = Get.put(Zoomato_controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red.shade800,
                      size: 35,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.alice(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      height: 4.h,
                      width: 8.9.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                            )
                          ],
                          color: Colors.white),
                      child: const Icon(
                        Icons.g_translate,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 5.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                            )
                          ],
                          color: Colors.white),
                      child: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 5.h,
                  width: 93.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 3)
                      ]),
                  child: Center(
                    child: TextField(
                      cursorHeight: 25,
                      cursorColor: Colors.black54,
                      cursorWidth: 1,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: "Restaurant name or a dish..",
                          hintStyle: GoogleFonts.aBeeZee(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500),
                          prefixIcon:
                              Icon(Icons.search, color: Colors.red.shade800),
                          prefixStyle: TextStyle(color: Colors.red.shade800),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 19.h,
                  width: 93.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/Login/2.png'),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 13.h,
                  width: 93.w,
                  decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3)],
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/Login/33.png'),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(height: 0.1.h, width: 10.w, color: Colors.grey),
                    Text(
                      " WHAT'S ON YOUR MIND? ",
                      style: GoogleFonts.recursive(
                        color: Colors.grey.shade600,
                        letterSpacing: 2,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(height: 0.1.h, width: 10.w, color: Colors.grey),
                  ],
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
                    )),
                SizedBox(
                  height: 15.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed('Food',
                              arguments: controller.Foodlist[index + 11]);
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 27.w,
                              height: 22.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "${controller.Foodlist[index + 11].img}"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Text(
                              "${controller.Foodlist[index + 11].name}",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(height: 0.1.h, width: 20.w, color: Colors.grey),
                    Text(
                      " ALL RESTAURANTS ",
                      style: GoogleFonts.recursive(
                        color: Colors.grey.shade600,
                        letterSpacing: 2,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(height: 0.1.h, width: 20.w, color: Colors.grey),
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
                  height: 15,
                ),
                SizedBox(
                  height: 45.h,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller.Foodlist.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed('Food',
                              arguments: controller.Foodlist[index]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
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
                                    image: DecorationImage(image: AssetImage("${controller.Foodlist[index].img2}"),fit: BoxFit.cover),
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
                                        "${controller.Foodlist[index].disname2}",
                                        style: GoogleFonts.aBeeZee(fontSize: 20),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 10, top: 3),
                                      child: Icon(Icons.favorite_border,
                                          color: Colors.grey, size: 30),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 3),
                                      child: Text(
                                        "${controller.Foodlist[index].name} ",
                                        style: GoogleFonts.aBeeZee(fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      "${controller.Foodlist[index].price2} ",
                                      style: GoogleFonts.aBeeZee(fontSize: 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 3),
                                      child: Text(
                                        "${controller.Foodlist[index].time}",
                                        style: GoogleFonts.aBeeZee(fontSize: 15),
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        height: 3.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            "${controller.Foodlist[index].review}",
                                            style: const TextStyle(color: Colors.white),
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
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
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
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          width: 5,
        ),
        Text(
          "$text",
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
