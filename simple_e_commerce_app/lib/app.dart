import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/splash.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';

import 'controller_binder.dart';

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
      initialBinding: ControllerBinder(),
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
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400
            ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
        ),


        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: const TextStyle(
                fontSize: 16,
              ),
              fixedSize: const Size.fromWidth(double.maxFinite)
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.themeColor,
            textStyle: const TextStyle(
              fontSize: 16
            )
          )
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500
          )
        )

      ),
    );
  }

  OutlineInputBorder _outlineInputBorder([Color? color]){
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? AppColors.themeColor, width: 1),
      borderRadius: BorderRadius.circular(8)
    );
  }
}
