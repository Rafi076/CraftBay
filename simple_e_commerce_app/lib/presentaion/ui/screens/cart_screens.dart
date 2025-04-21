import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/assets_path.dart';

import '../../state_holders/bottom_nav_bar_controller.dart';
import '../utils/app_colors.dart';
import '../widgets/cart/cart_item_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      // popScope Work to Navigate to Home Screen to wishlist when pressed in phone back button
      canPop: false,
      onPopInvoked: (value) {
        backToHome();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          title: const Text('Cart'), // Style icons
          leading: IconButton(
            onPressed: backToHome,
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return const CartItemWidget();
              },
              itemCount: 4,
            )),
            Container(
              child: _buildPriceAndAddToCartSection(context),
            ),
          ],
        ),
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavBarController>().backToHome();
  }
}



Widget _buildPriceAndAddToCartSection(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Price', style: Theme.of(context).textTheme.titleMedium),
            const Text('\$10000',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeColor))
          ],
        ),
        SizedBox(
          width: 140,
          child: ElevatedButton(onPressed: () {}, child: Text('Check Out')),
        )
      ],
    ),
  );
}
