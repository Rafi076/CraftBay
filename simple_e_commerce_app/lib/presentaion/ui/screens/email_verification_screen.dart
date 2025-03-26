import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';

import '../widgets/app_logo_widget.dart';
import 'otp_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  // TextEditingController --- >> _emailTEController
  final TextEditingController _emailTEController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 82),
              const AppLogoWidget(),
              const SizedBox(height: 24,),
              Text('Welcome Back', style: Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: 8,),
              Text('Please Enter Your Email Address', style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey
              ),),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _emailTEController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                // here we did the ElevatedButton functionality at app.dart
                  onPressed: _onTapNextbutton,
                  child: const Text('Next'))
        
            ],
          ),
        ),
      ),
    );
  }
// for OTP Screen
  void _onTapNextbutton(){
    Get.to(() => const OtpverificationScreen());
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
