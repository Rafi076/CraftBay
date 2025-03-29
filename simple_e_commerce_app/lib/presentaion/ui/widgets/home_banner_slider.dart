import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';


// / carousel slider code
class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({
    super.key,
  });

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {

  // This for small dot under banner (below this comment)
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 150.0,

                   // for changing the dot after each swap
                   onPageChanged: (index, reason){
                      _selectedIndex.value = index;

                   }
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                        color: AppColors.themeColor
                    ),
                    alignment: Alignment.center,
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),

        const SizedBox(height: 8,),
        // This for small dot under banner
        ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, currentIndex, _ ){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0; i<5; i++)
                  Container(
                    height: 12, width: 12,
                    margin: EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                      color: currentIndex == i? AppColors.themeColor:null,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey)
                    ),

                  )
              ],
            );
          }
        )
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
