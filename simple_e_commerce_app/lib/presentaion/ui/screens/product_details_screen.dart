import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';
import 'package:simple_e_commerce_app/presentaion/ui/widgets/size_picker.dart';
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
            backToHome(); // ✅ calls controller to switch tab
            Get.back(); // ✅ pops ProductDetail page from stack
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildProductDescription(),
          ),
          _buildPriceAndAddToCartSection(context) ///// *****
        ],
      ),
    );
  }

  Widget _buildProductDescription() {
    return SingleChildScrollView(
            child: Column(
              children: [
                const ProductImageSlider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNameAndQuantitySection(),
                      const SizedBox(
                        height: 4,
                      ),
                      _buildRatingAndAddSection(),
                      const SizedBox(
                        height: 8,
                      ),
                      ColorPicker(colors: const [
                        Colors.grey,
                        Colors.green,
                        Colors.yellow,
                        Colors.blue,
                      ], onColorSelected: (color) {}),
                      const SizedBox(
                        height: 16,
                      ),
                      SizePicker(
                        sizes: const [
                          'S',
                          'M',
                          'L',
                          'XL',
                          'XXl',
                        ],
                        onSizeSelected: (String selectedSize) {},
                      ),
                      _buildDescriptionSection()
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Column _buildDescriptionSection() {
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Description',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('''A shoe is a type of footwear worn on the feet, designed to protect and comfort them. It typically covers the foot and may extend up to the ankle, often made of leather with a sole and heel. Shoes serve various functions, including protection from the elements, improved comfort, and as an item of fashion or decoration.esigned to protect and comfort them. It typically covers the foot and may extend up to the ankle, often made of leather with a sole and heel. Shoes serve various functions, including protection from the elements, improved comfort, and as an item of fashion or decoration. ''',
                        style: TextStyle(color: Colors.black45),),
                      ],
                    );
  }

  Widget _buildNameAndQuantitySection() {
    return Row(
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
                    );
  }

  Widget _buildRatingAndAddSection() {
    return Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        const Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          // 3 beside Star
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('3',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Reviews',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.themeColor)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Card(
                          color: AppColors.themeColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
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
                    );
  }

  Widget _buildPriceAndAddToCartSection(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.themeColor.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: Theme.of(context).textTheme.titleMedium),
                  Text('\$100', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600 ,
                    color: AppColors.themeColor
                  ))
                ],
              ),
             SizedBox(
               width: 140,
               child: ElevatedButton(onPressed: (){}, child: Text('Add to cart')),
             )
            ],
          ),
        );
  }

  void backToHome() {
    Get.find<BottomNavBarController>().backToHome();
  }
}
