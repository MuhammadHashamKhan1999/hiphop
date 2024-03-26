import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/controller/splash_controller.dart';
import 'package:hiphop/utils/colors_constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_){
          return Scaffold(
              // backgroundColor: AppColors.buttonBackgroundColor,
              body: Center(
                child: Image.asset('assets/images/app_logo_light.png', height: 250),
              ));
        });
  }
}