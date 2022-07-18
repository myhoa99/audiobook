import 'package:audiobook/generated/resource.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  Center(
        child: SvgPicture.asset(R.ASSETS_SVG_LOGO_SVG),
      ),
    

    );
  }
}
