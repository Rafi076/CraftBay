import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_e_commerce_app/presentaion/ui/utils/assets_path.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsPath.applogo,
      width: 100,);
  }
}