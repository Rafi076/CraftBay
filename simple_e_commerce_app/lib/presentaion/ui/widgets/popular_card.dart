import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';

class popularCard extends StatelessWidget {
  const popularCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          elevation: 3,
          child: SizedBox(
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      image: const DecorationImage(
                          image: AssetImage(AssetsPath.dummyProductimg),
                          fit: BoxFit.scaleDown)),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Product Name",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                              '\$120',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.themeColor
                              )
                          ),
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
