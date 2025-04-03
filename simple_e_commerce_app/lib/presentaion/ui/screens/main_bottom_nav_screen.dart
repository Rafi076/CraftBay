import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simple_e_commerce_app/presentaion/state_holders/bottom_nav_bar_controller.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/cart_screens.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/category_list_screen.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/favourit_screen.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/home_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final BottomNavBarController _navBarController =
      Get.find<BottomNavBarController>();

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryListScreen(),
    CartScreen(),
    FavouriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (_) {
      return Scaffold(
        body: _screens[_navBarController.SelectedIndex],
        bottomNavigationBar: NavigationBar(
            selectedIndex: _navBarController.SelectedIndex,
            onDestinationSelected: _navBarController.changeIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'home'),
              NavigationDestination(
                  icon: Icon(Icons.category_outlined), label: 'Category'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border), label: 'favorite'),
            ]),
      );
    });
  }
}
