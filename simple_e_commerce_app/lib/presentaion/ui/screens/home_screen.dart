import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/assets_path.dart';

import '../utils/app_colors.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_banner_slider.dart';
import '../widgets/search_text_field.dart';
import '../widgets/seciton_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 16,),
            SearchTextField(
              textEditingController: TextEditingController(),),
            SizedBox(height: 16,),
            // carousel slider code
            HomeBannerSlider(),

            SizedBox(height: 16,),


            // Categories & 'see all'
            SectionHeader(
              title: 'Categories',
              onTap: (){} ,
            ),

            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetsPath.applogoNav),
      actions:  [
        AppBarIconButton(
          iconData: Icons.person,
          onTap: () {  },
        ),
        const SizedBox(width: 10,),
        AppBarIconButton(
          iconData: Icons.call,
          onTap: () {  },
        ),
        const SizedBox(width: 10,),
        AppBarIconButton(
          iconData: Icons.notifications_active_outlined,
          onTap: () {  },
        ),
        const SizedBox(width: 15,),
      ],
    );
  }
}




