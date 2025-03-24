import 'package:flutter/material.dart';
import 'package:simple_e_commerce_app/presentaion/ui/splash.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';

class CraftBayApp extends StatelessWidget {
  const CraftBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,

        scaffoldBackgroundColor: Colors.white,

        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor,
        )

      ),
    );
  }
}
