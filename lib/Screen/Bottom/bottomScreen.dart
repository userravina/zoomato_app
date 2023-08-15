
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/zoomato_controller.dart';
import '../HomeScreen/homeScreen.dart';

// ignore: camel_case_types
class bottomScreen extends StatefulWidget {
  const bottomScreen({super.key});

  @override
  State<bottomScreen> createState() => _bottomScreenState();
}

// ignore: camel_case_types
class _bottomScreenState extends State<bottomScreen> {
  @override
  Widget build(BuildContext context) {
    Zoomato_controller controller = Get.put(Zoomato_controller());
    return SafeArea(
      child: Scaffold(
        body: Obx(
              () =>  IndexedStack(
            index: controller.i. value,
            children: const [
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
              () => SizedBox(height: 60,
            child: BottomNavigationBar(
              currentIndex: controller.i.value,
              onTap: (value) {
                controller.i.value = value;
              },
              mouseCursor: MouseCursor.uncontrolled,
              elevation: 15,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.red.shade800,
              items: const [
                BottomNavigationBarItem(
                  label: "Delivery",
                  icon: Icon(Icons.delivery_dining,size: 30),
                ),
                BottomNavigationBarItem(
                  label: "Dining",
                  icon: Icon(Icons.dinner_dining,size: 30),
                ),
                BottomNavigationBarItem(
                  label: "Money",
                  icon: Icon(Icons.money,size: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
