import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/controller/nav_bar_controller.dart';

class MainNavBarScreen extends StatefulWidget {
  const MainNavBarScreen({super.key});

  @override
  State<MainNavBarScreen> createState() => _MainNavBarScreenState();
}

class _MainNavBarScreenState extends State<MainNavBarScreen> {
  final NavBarController navBarController = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (navBarController) {
        return Scaffold(
          body: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            switchInCurve: Curves.ease,
            switchOutCurve: Curves.easeInOut,
            child: navBarController.screens[navBarController.selectedIndex],
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: navBarController.selectedIndex,
            onDestinationSelected: (value) =>
                navBarController.changeIndex(value),
            animationDuration: const Duration(milliseconds: 500),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.category_outlined),
                selectedIcon: Icon(Icons.category_rounded),
                label: 'Product',
              ),
              NavigationDestination(
                icon: Icon(Icons.tire_repair_outlined),
                selectedIcon: Icon(Icons.tire_repair_rounded),
                label: 'Care',
              ),

              NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                selectedIcon: Icon(Icons.shopping_bag_rounded),
                label: 'Shop',
              ),
              NavigationDestination(
                icon: Icon(Icons.people_alt_outlined),
                selectedIcon: Icon(Icons.people_alt),
                label: 'Community',
              ),
            ],
          ),
        );
      },
    );
  }
}
