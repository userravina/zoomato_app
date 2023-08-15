import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:zoomato_app/Screen/Add_Cart_Screen/add_cart_screen.dart';
import 'package:zoomato_app/Screen/HomeScreen/homeScreen.dart';
import 'package:zoomato_app/Screen/Login/loginScreen.dart';
import 'package:zoomato_app/Screen/Splash/SplashScreen.dart';
import 'package:zoomato_app/Screen/cart_screen/cart_screen.dart';
import 'Screen/Bottom/bottomScreen.dart';
import 'Screen/Food_detai_screen/foodScreenDetails.dart';

void main() {
  runApp(Sizer(
    builder: (context, orientation, deviceType) =>  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (p0) => const Splash(),
        'login': (p0) => const loginScreen(),
        'bottom': (p0) => const bottomScreen(),
        'Home': (p0) => const HomeScreen(),
        'Food': (p0) => const Food_details(),
        'add': (p0) => const add_cart_screen(),
        'cart': (p0) => const cart_screen(),
      },
    ),
  ));
}
