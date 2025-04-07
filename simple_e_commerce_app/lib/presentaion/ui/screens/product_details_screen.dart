import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../state_holders/bottom_nav_bar_controller.dart';
import '../widgets/product_image_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),// Style icons
        leading: IconButton(
          onPressed: (){
            backToHome();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        ),
      body: const Column(
        children: [
          ProductImageSlider(),
        ],
      ),
      );
  }

  void backToHome(){
    Get.find<BottomNavBarController>().backToHome();
  }
}
