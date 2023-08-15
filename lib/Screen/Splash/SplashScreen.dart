import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offNamed('login');
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffd31a1a),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Image.asset("assets/images/SplashImages/Splash.png",color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
