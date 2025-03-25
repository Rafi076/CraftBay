import 'package:flutter/material.dart';

import '../widgets/app_logo_widget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              decoration: InputDecoration(
                hintText: 'Email',

              ),
            ),

          ],
        ),
      ),
    );
  }
}
