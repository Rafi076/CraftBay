import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_e_commerce_app/presentaion/ui/widgets/product_card.dart';

import '../widgets/popular_card.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

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
        title: const Text('Electronics'),// Style icons
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,childAspectRatio: 0.75, mainAxisSpacing: 5, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return const ProductCard();
          }),
    );
  }
}
