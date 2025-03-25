import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simple_e_commerce_app/presentaion/ui/screens/email_verification_screen.dart';

import '../widgets/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // to move to next screen after Splash screen
  Future<void> _moveToNextScreen() async{

    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const EmailVerificationScreen());
  }
  @override
  void initState(){
    super.initState();
    _moveToNextScreen();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AppLogoWidget(),
              Spacer(),
              const CircularProgressIndicator(),
              const SizedBox(height: 15,),
              const Text('Version 1.0,0', style: TextStyle(color: Colors.grey),)

            ],
          ),
        ),
      ),
    );
  }
}


