import 'package:flutter/material.dart';
import 'package:hiphop/screens/change_password_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/constants.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/small_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                        "Reset Password",
                        style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: Dimension.height10),
                      SmallText(text: 'Forgot your password? No worries!\nWe\'ve got you covered' ),
                      const SizedBox(height: 150),
                      SizedBox(
                        width: Dimension.screenWidth*0.95 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: Constants.textFieldHeight, horizontal: Constants.textFieldWidth),
                                prefixIcon: const Icon(Icons.email_outlined, color: Colors.white, size: 20),
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
                                labelText: "Enter your email",
                                alignLabelWithHint: false,
                                labelStyle: const TextStyle(color: Colors.white60),
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                isCollapsed: false
                            ),
                          ),
                        ),
                      ),
                      // Enter Your Password Text Fields
                      SizedBox(height: Dimension.height20),
                      // Sign In Button
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.zero
                        ),
                        child: SizedBox(
                          height: 50,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen(isForReset: true,)));
                            },
                            child: const Text("Continue", style: TextStyle(color: AppColors.textWhiteColor)),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height30),
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
}
