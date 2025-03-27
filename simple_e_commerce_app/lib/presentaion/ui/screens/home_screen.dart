import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/assets_path.dart';

import '../widgets/app_bar_icon_button.dart';
import '../widgets/search_text_field.dart';

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


