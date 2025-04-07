import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_e_commerce_app/presentaion/ui/widgets/popular_card.dart';
import 'package:simple_e_commerce_app/presentaion/ui/widgets/product_card.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';

class HorizontalProductListView extends StatelessWidget {
  const HorizontalProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return popularCard();
      },
      separatorBuilder: (_, __) => const SizedBox(
        width: 8,
      ),
    );
  }
}



