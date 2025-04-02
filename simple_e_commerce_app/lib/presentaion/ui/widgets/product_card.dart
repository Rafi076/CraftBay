import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(26),
            decoration: BoxDecoration(
                color: AppColors.themeColor.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                )),
            child: const Icon(Icons.computer,
                size: 48, color: AppColors.themeColor),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            'Electronics',
            style: TextStyle(color: AppColors.themeColor),
          )
        ],
      ),
    );
  }
}
