import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/controller/splash_controller.dart';

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
              backgroundColor: Colors.white,
              body: Center(
                child: Container(
                  color: Colors.amberAccent,
                ),
                // child: SvgPicture.asset('assets/svg/ic_splash.svg', height: 250, color: Colors.red),
              ));
        });
  }
}