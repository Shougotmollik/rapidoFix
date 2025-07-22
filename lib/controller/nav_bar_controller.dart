import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rapidofix/views/main_nav/care/care_screen.dart';
import 'package:rapidofix/views/main_nav/community/community_screen.dart';
import 'package:rapidofix/views/main_nav/home/home_screen.dart';
import 'package:rapidofix/views/main_nav/product/product_screen.dart';
import 'package:rapidofix/views/main_nav/shop/shop_screen.dart';

class NavBarController extends GetxController {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    _selectedIndex = index;
    update();
  }

  final List<Widget> screens = [
    HomeScreen(),
    ProductScreen(),
    CareScreen(),
    ShopScreen(),
    CommunityScreen(),
  ];
}
