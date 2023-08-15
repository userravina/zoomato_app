
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

// ignore: camel_case_types
class _loginScreenState extends State<loginScreen> {
  var tetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: tetKey,
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 38.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Login/login.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 320),
                child: Text(
                  "India's #1 Food Delivery \n       and Dining App",
                  style: GoogleFonts.alice(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 390, left: 20, right: 15),
                child: Row(
                  children: [
                    Container(height: 0.1.h, width: 25.w, color: Colors.grey),
                    Text(
                      "Log in or sign up",
                      style: GoogleFonts.alice(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(height: 0.1.h, width: 24.w, color: Colors.grey),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 385, left: 20, right: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 7.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15)),
                                child: SizedBox(
                                    height: 6.h,
                                    width: 7.w,
                                    child: Image.asset(
                                        'assets/images/Login/india.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 5),
                                child: SizedBox(
                                  height: 10.h,
                                  width: 65.w,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    style: const TextStyle(color: Colors.black),
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      hintText: "Enter Phone Number",
                                      hintStyle: const TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      prefixStyle: const TextStyle(color: Colors.black,),
                                      prefix: const Text(
                                        "+91",
                                        style: TextStyle(color: Colors.black),

                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.length < 10) {
                                        return "Please Enter 10 Digit";
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        if (tetKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("login sucessfully"),
                            backgroundColor: Colors.red.shade200,
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: "undo",
                              onPressed: () {},
                            ),
                          ));
                          Get.offNamed('bottom');
                        }

                      },
                      child: Container(
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Colors.red.shade800,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 20, right: 15),
                      child: Row(
                        children: [
                          Container(
                              height: 0.1.h, width: 40.w, color: Colors.grey),
                          Text(
                            " or ",
                            style: GoogleFonts.alice(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                              height: 0.1.h, width: 40.w, color: Colors.grey),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async {},
                          child: Container(
                            height: 7.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffDADADA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.person,
                                color: Color(0xff2D2B2B)),
                          ),
                        ),
                        Container(
                          height: 7.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffDADADA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.g_mobiledata_outlined,
                            color: Color(
                              0xff2D2B2B,
                            ),
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
