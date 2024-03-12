import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/screens/otp_screen.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/utils/api_utility.dart';
import 'package:hiphop/utils/constants.dart';
import 'package:hiphop/utils/dialog_utility.dart';
import 'package:hiphop/utils/dimensions.dart';
import '../utils/colors_constant.dart';
import '../widgets/small_text.dart';
import 'homepage_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileNoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            "Create Your Account",
                            style: TextStyle(
                              color: AppColors.textWhiteColor,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: Dimension.height10),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: _firstNameController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                    enabled: true,
                                    // Focused Border Setting
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.buttonBackgroundColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(12.0)),
                                    // Enabled Border Setting
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
                                    labelText: "First Name",
                                    alignLabelWithHint: false,
                                    labelStyle: const TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: _lastNameController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                    enabled: true,
                                    // Focused Border Setting
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.buttonBackgroundColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(12.0)),
                                    // Enabled Border Setting
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
                                    labelText: "Last Name",
                                    alignLabelWithHint: false,
                                    labelStyle: const TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: _emailController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                    enabled: true,
                                    // Focused Border Setting
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.buttonBackgroundColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(12.0)),
                                    // Enabled Border Setting
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
                                    labelText: "Enter Your Email",
                                    alignLabelWithHint: false,
                                    labelStyle: const TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false,

                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: _mobileNoController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                    enabled: true,
                                    // Focused Border Setting
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.buttonBackgroundColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(12.0)),
                                    // Enabled Border Setting
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
                                    labelText: "Phone No.",
                                    alignLabelWithHint: false,
                                    labelStyle: const TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false,

                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: _passwordController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                    enabled: true,
                                    // Focused Border Setting
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.buttonBackgroundColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(12.0)),
                                    // Enabled Border Setting
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
                                    labelText: "Create Your Password",
                                    alignLabelWithHint: false,
                                    labelStyle: const TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: _confirmPasswordController,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                    enabled: true,
                                    // Focused Border Setting
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.buttonBackgroundColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(12.0)),
                                    // Enabled Border Setting
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
                                    labelText: "Confirm Password",
                                    alignLabelWithHint: false,
                                    labelStyle: const TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Dimension.height20),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.zero
                            ),
                            child: SizedBox(
                              width: Dimension.screenWidth*0.85,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                                    backgroundColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundColor,
                                    ),
                                    mouseCursor: MaterialStateMouseCursor.clickable,
                                    shadowColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                                    animationDuration: const Duration(milliseconds: 1000)

                                ),
                                onPressed: (){
                                  if(_isValidated()) {
                                    String firstName = _firstNameController.text.trim();
                                    String lastName = _lastNameController.text.trim();
                                    String mobileNo = _mobileNoController.text.trim();
                                    String email = _emailController.text.trim();
                                    String password = _passwordController.text.trim();
                                    String confirmPassword = _confirmPasswordController.text.trim();
                                    signUpAPI(context, firstName, lastName, mobileNo, email, password, confirmPassword);
                                  }
                                },
                                child: const Text("Sign Up", style: TextStyle(color: AppColors.textWhiteColor)),
                              ),
                            ),
                          ),
                          SizedBox(height: Dimension.height30),
                          SmallText(text: 'or'),
                          const Text(
                            "Continue With",
                            style: TextStyle(
                              color: AppColors.textWhiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: Dimension.height30),
                          Padding(
                            padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Dimension.width20*7.8,
                                  height: Dimension.width20*3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: AppColors.buttonBackgroundColor,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Container(
                                      // padding: EdgeInsets.only(left: 20),
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
                                SizedBox(
                                  width: Dimension.width20*7.8,
                                  height: Dimension.width20*3,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2,
                                          color: AppColors.buttonBackgroundColor
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/facebook_icon.png"),
                                        SizedBox(width: Dimension.width05,),
                                        SmallText(text: "Facebook", size: 16.0,)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
  bool _isValidated(){
    String firstName = _firstNameController.text.trim();
    String lastName = _lastNameController.text.trim();
    String mobileNo = _mobileNoController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();

    if (firstName.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your first name');
      return false;
    } else if (lastName.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your last name');
      return false;
    } else if (email.isNotEmpty && !EmailValidator.validate(email)) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your email address');
      return false;
    } else if (mobileNo.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your contact number');
      return false;
    } else if (password.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter password');
      return false;
    } else if (password.length < Constants.passwordLength) {
      DialogUtility.showErrorDialog(context, "Error", 'Password is too short');
      return false;
    } else if (confirmPassword.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter confirm password');
      return false;
    } else if (password != confirmPassword) {
      DialogUtility.showErrorDialog(context, "Error", 'Passwords didn\'t match');
      return false;
    }
    return true;
  }
}