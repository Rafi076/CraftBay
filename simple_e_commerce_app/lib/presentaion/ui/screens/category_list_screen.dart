import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_e_commerce_app/presentaion/state_holders/bottom_nav_bar_controller.dart';
import 'package:simple_e_commerce_app/presentaion/ui/widgets/category_card.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        title: const Text('Categories'),
        leading: IconButton(onPressed: () {
          Get.find<BottomNavBarController>().backToHome();
        }, icon: const Icon(Icons.arrow_back_ios)),
        iconTheme: const IconThemeData(color: Colors.black54), // Style icons
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 0.75),
          itemBuilder: (context, index) {
            return const CategoryCard();
          }),
    );
  }
}
