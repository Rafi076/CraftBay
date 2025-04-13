import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';
import '../../state_holders/bottom_nav_bar_controller.dart';
import '../widgets/collor_picker.dart';
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
        title: const Text('Product Detail'), // Style icons
        leading: IconButton(
          onPressed: () {
            backToHome();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          const ProductImageSlider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      'Nike Shoe 2025 latest model Special offer!! 20% Off!',
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                    ItemCount(
                      initialValue: 1,
                      minValue: 1,
                      maxValue: 20,
                      decimalPlaces: 0,
                      color: AppColors.themeColor,
                      onChanged: (value) {},
                    )
                  ],
                ),
                const SizedBox(height: 4,),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center, // 3 beside Star
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text('3', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                        ))
                      ],
                    ),
                    const SizedBox(width: 10,),
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                          'Reviews',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.themeColor
                          )
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Card(
                      color: AppColors.themeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.favorite_outline_rounded,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8,),
                ColorPicker(colors: const[
                  Colors.grey,
                  Colors.green,
                  Colors.yellow,
                  Colors.blue,
                ],onColorSelected: (color){})
              ],
            ),
          )
        ],
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavBarController>().backToHome();
  }
}



