import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
