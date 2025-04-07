import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../state_holders/bottom_nav_bar_controller.dart';
import '../widgets/popular_card.dart';
import '../widgets/product_card.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      // popScope Work to Navigate to Home Screen to wishlist when pressed in phone back button
      canPop: false,
      onPopInvoked: (value){
        backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          title: const Text('Wishlist'),// Style icons
          leading: IconButton(
            onPressed: backToHome,
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: GridView.builder(
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,childAspectRatio: 0.75, mainAxisSpacing: 5, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return const popularCard();
            }),
      ),
    );
  }

  void backToHome(){
    Get.find<BottomNavBarController>().backToHome();
  }
}
