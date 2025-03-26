import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/app_logo_widget.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  // TextEditingController --- >> _firstNameTEController
  final TextEditingController _firstNameTEController = TextEditingController();

  final TextEditingController _lastNameTEController = TextEditingController();

  final TextEditingController _mobileTEController = TextEditingController();

  final TextEditingController _cityTEController = TextEditingController();

  final TextEditingController _shippinAddressTEController = TextEditingController();


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
              Text('Complete Profile', style: Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: 8,),
              Text('Get started with us providing your details',textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey
              ),),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _firstNameTEController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'First Name',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _lastNameTEController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _mobileTEController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'Mobile',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _cityTEController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'City',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                maxLines: 4,
                controller: _shippinAddressTEController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'Shipping Address',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                // here we did the ElevatedButton functionality at app.dart
                  onPressed: _onTapCompleteButton,
                  child: const Text('Complete'))

            ],
          ),
        ),
      ),
    );
  }
  // for Next Screen
  void _onTapCompleteButton(){
    // Get.to(() =>  );
  }
@override
  void dispose() {
    // TODO: implement ==
    super.dispose();
  }
}