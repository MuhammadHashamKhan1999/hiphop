// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_import, unused_import, avoid_unnecessary_containers, unused_element
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hiphop/controller/auth_controller.dart';
import 'package:hiphop/route/appRoute.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/screens/reset_password_screen.dart';
import 'package:hiphop/screens/sign_up_screen.dart';
import 'package:hiphop/utils/api_utility.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/constants.dart';
import 'package:hiphop/utils/dialog_utility.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/bottom_bar_navigation.dart';
import 'package:hiphop/widgets/on_board_image_slider.dart';
import 'package:hiphop/widgets/small_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final AuthController authController = Get.put(AuthController());

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 600,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/homepagebg.png"),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const ImageSlider(),
                      const Text(
                        "New Releases",
                        style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: Dimension.height10),
                      SizedBox(
                        width: Dimension.width25 * 12,
                        child: SmallText(
                          text:
                          "Check out listing of all this week’s new singles and albums",
                          color: AppColors.greyTextColor,
                          height: 1.6,
                          size: Dimension.font16,
                        ),
                      ),
                      SizedBox(height: Dimension.height20),
                      SizedBox(
                        width: Dimension.screenWidth * 0.95,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(
                                color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                                enabled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: Constants.textFieldHeight,
                                    horizontal: Constants.textFieldWidth),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.greyColor,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(12.0)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.buttonBackgroundColor,
                                        width: 2.0,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Error Border Setting
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                  ),
                                ),
                                prefixIcon: const Icon(
                                    Icons.email_outlined, color: Colors.white,
                                    size: 20),
                                labelText: "Enter Your Email",
                                alignLabelWithHint: false,
                                labelStyle: TextStyle(
                                    color: AppColors.textWhiteColor
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior
                                    .auto,
                                isCollapsed: false
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height05),
                      SizedBox(
                        width: Dimension.screenWidth * 0.95,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _passwordController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            obscureText: _showPassword,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(
                                color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                                enabled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: Constants.textFieldHeight,
                                    horizontal: Constants.textFieldWidth),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.greyColor,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(12.0)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.buttonBackgroundColor,
                                        width: 2.0,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Error Border Setting
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                  ),
                                ),
                                prefixIcon: const Icon(Icons.password_outlined,
                                    color: Colors.white, size: 20),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _showPassword ? Icons.visibility : Icons
                                        .visibility_off,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                ),
                                labelText: "Enter Your Password",
                                alignLabelWithHint: false,
                                labelStyle: TextStyle(
                                    color: AppColors.textWhiteColor
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior
                                    .auto,
                                isCollapsed: false
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: Dimension.height10),

                      InkWell(child: SmallText(text: "Forgot your password?"),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ResetPasswordScreen()));
                          }),

                      SizedBox(height: Dimension.height20),

                      // Sign In Button
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.zero
                        ),
                        child: SizedBox(
                          width: Dimension.screenWidth * 0.85,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            12.0))),
                                backgroundColor: MaterialStatePropertyAll(
                                  AppColors.buttonBackgroundColor,
                                ),
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                shadowColor: MaterialStatePropertyAll(
                                    AppColors.buttonBackgroundLightColor),
                                animationDuration: Duration(milliseconds: 1000)

                            ),
                            onPressed: () {
                              if (_isValidated()) {
                                String email = _emailController.text.trim();
                                String password = _passwordController.text
                                    .trim();
                                loginAPI(context, email, password,
                                    Constants.fcmToken);
                              }
                            },
                            child: Text("Sign In", style: TextStyle(
                                color: AppColors.textWhiteColor)),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height30),
                      Padding(
                        padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => _onSocialSignIn(Constants.socialLoginTypeGoogle),
                              child: SizedBox(
                                width: Dimension.width20 * 7.8,
                                height: Dimension.width20 * 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.buttonBackgroundColor,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                  ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/google_icon.png"),
                                        SizedBox(width: Dimension.width05,),
                                        SmallText(text: "Google", size: 16.0,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              child: SizedBox(
                                width: Dimension.width20 * 7.8,
                                height: Dimension.width20 * 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color: AppColors.buttonBackgroundColor
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                  ),
                                  child: Container(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/facebook_icon.png"),
                                        SizedBox(width: Dimension.width05,),
                                        SmallText(text: "Facebook", size: 16.0,)
                                      ],
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimension.height20),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoute.signupScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallText(text: "Don\'t Have an Account? Let's "),
                            SmallText(text: "\tSign Up", color: AppColors.textRedColor),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimension.height20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // private method
  bool _isValidated() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isNotEmpty && !EmailValidator.validate(email)) {
      DialogUtility.showErrorDialog(
          context, "Error", 'Please enter your email address');
      return false;
    } else if (password.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter password');
      return false;
    } else if (password.length < Constants.passwordLength) {
      DialogUtility.showErrorDialog(context, "Error", 'Password is too short');
      return false;
    }
    return true;
  }

  void _onSocialSignIn(String type) async {
    User? signedInUser = await authController.signInWithGoogle();
    if (signedInUser != null) {
      socialRegisterAPI(context, signedInUser, type);
    } else {
      DialogUtility.showErrorDialog(context, "Login Failed", 'An error occurred');
    }
  }
}