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
        leading: IconButton(
          onPressed: (){
            Get.find<BottomNavBarController>().backToHome();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Categories'),
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 0.65),
          itemBuilder: (context, index) {
            return const CategoryCard();
          }),
    );
  }
}

