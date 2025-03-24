import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SvgPicture.asset('assets/images/logo.svg', width: 100,),
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
