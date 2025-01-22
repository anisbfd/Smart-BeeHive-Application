import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beehive/pages/HomePage.dart';
import 'package:beehive/pages/TasksPage.dart';
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
          indicatorShape: CircleBorder(),
          backgroundColor: Color.fromARGB(255, 45, 45, 45),
          height: 60,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          elevation: 0,
          indicatorColor: Colors.transparent,
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 120, 120, 120),
              ),
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
    TasksPage(),
    PersonalPage(),
  ];
}
