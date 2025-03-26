import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/app_colors.dart';

import '../widgets/app_logo_widget.dart';

class OtpverificationScreen extends StatefulWidget {
  const OtpverificationScreen({super.key});

  @override
  State<OtpverificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpverificationScreen> {
  // TextEditingController --- >> _emailTEController
  final TextEditingController _otpTEController = TextEditingController();


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
              Text('Enter OTP Code', style: Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: 8,),
              Text('A 4 digit OTP has sent to your Email', style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey
              ),),
              const SizedBox(height: 16,),
              PinCodeTextField(
                length: 6,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.green,

                  inactiveFillColor: Colors.white,
                  inactiveColor: AppColors.themeColor,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                controller: _otpTEController,
                 appContext: context,
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                // here we did the ElevatedButton functionality at app.dart
                  onPressed: (){},
                  child: const Text('Submit')),
              const SizedBox(height: 16,),
              RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey),
                    text: 'This OTP will expire in ',
                      children: [
                        TextSpan(text: '120s', style: TextStyle(
                          color: AppColors.themeColor,
                        ))
                      ]
                  )),
              const SizedBox(height: 16,),
              TextButton(onPressed: (){},
                  child: const Text('Resend OTP'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
