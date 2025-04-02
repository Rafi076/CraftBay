


import 'package:flutter/cupertino.dart';
import 'package:simple_e_commerce_app/presentaion/ui/widgets/product_card.dart';

class HorizontalCategorieListView extends StatelessWidget {
  const HorizontalCategorieListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ProductCard();
      },
      separatorBuilder: (_, __) => const SizedBox(
        width: 8,
      ),
    );
  }
}

