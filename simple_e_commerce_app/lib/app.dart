import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/splash.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';

class CraftBayApp extends StatefulWidget {
  const CraftBayApp({super.key});

  @override
  State<CraftBayApp> createState() => _CraftBayAppState();
}

class _CraftBayAppState extends State<CraftBayApp> {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,

        scaffoldBackgroundColor: Colors.white,

        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
            border: _outlineInputBorder(),
            enabledBorder: _outlineInputBorder(),
            focusedBorder: _outlineInputBorder(),
            errorBorder: _outlineInputBorder(Colors.red),
        )

      ),
    );
  }

  OutlineInputBorder _outlineInputBorder([Color? color]){
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? AppColors.themeColor, width: 1.4),
      borderRadius: BorderRadius.circular(8)
    );
  }
}
