import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card.dart';
import '../widgets/popular_card.dart';
import '../widgets/product_card.dart';

class SpecialListScreen extends StatelessWidget {
  const SpecialListScreen({super.key});

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
        title: const Text('Special'),// Style icons
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.75),
          itemBuilder: (context, index) {
            return const popularCard(); // here willbe PopularCard()
          }),
    );
  }
}
