import 'package:flutter/material.dart';
import 'package:hiphop/screens/otp_screen.dart';
import 'package:hiphop/screens/sign_up_screen.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/screens/splash_screen.dart';
import 'package:hiphop/widgets/bottom_bar_navigation.dart';

class AppRoute {

  static const String splashScreen = 'splash_screen';
  static const String loginScreen = 'login_screen';
  static const String signupScreen = 'signup_screen';
  static const String otp_screen = 'otp_screen';
  static const String bottomBarNavigationScreen = 'bottom_bar_navigation_screen';

  static Route<dynamic>? routeController(RouteSettings settings) {
    Widget? screen;
    var data;
    if (settings.arguments != null) {
      data = settings.arguments as Map<String, dynamic>;
    }
    switch (settings.name) {
      case splashScreen:
        screen = SplashScreen();
        break;
      case loginScreen:
         screen = const SignInPage();
        break;
      case signupScreen:
         screen = const SignUpScreen();
        break;
      case otp_screen:
         screen = const OtpScreen();
        break;
      case bottomBarNavigationScreen:
         screen = const BottomBarNavigation();
        break;
      // case listScreen:
      //    String title = data['title'];
      //    int type = data['type'];
      //    screen = ListScreen(title: title, type: type);
      //   break;
    }
    return MaterialPageRoute(builder: (context) => screen!);
  }
}
