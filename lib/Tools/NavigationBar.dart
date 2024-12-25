import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beehive/pages/HomePage.dart';
import 'package:beehive/pages/HistoryPage.dart';
import 'package:beehive/pages/PersonalPage.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Colors.amber,
          height: 60,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          elevation: 0,
          indicatorColor: null,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_rounded),
              label: 'Personal',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.Pages[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final Pages = [
    HomePage(),
    HistoryPage(),
    PersonalPage(),
  ];
}
