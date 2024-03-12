import 'package:get/get.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/widgets/bottom_bar_navigation.dart';
import '../Storage.dart';

class SplashController extends GetxController{
  @override
  void onReady(){
    super.onReady();
    Future.delayed(const Duration(seconds: 2),(){
      Get.offAll(Storage.isLoggedIn() ? const BottomBarNavigation() : const SignInScreen(), transition: Transition.noTransition);
    });
  }
}