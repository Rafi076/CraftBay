import 'package:get/get.dart';
import 'package:simple_e_commerce_app/presentaion/state_holders/bottom_nav_bar_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(()=> BottomNavBarController());
  }
}