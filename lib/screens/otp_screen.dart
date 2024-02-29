import 'package:flutter/material.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/bottom_bar_navigation.dart';
import 'package:hiphop/widgets/small_text.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                            "Enter the Code",
                            style: TextStyle(
                              color: AppColors.textWhiteColor,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: Dimension.height10),
                          SmallText(text: 'Enter the 6-digits security code sent\n to your email address'),
                          SizedBox(height: 150),
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                maxLength: 6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorColor: AppColors.buttonBackgroundColor,
                                style: const TextStyle(color: AppColors.textWhiteColor),
                                decoration: InputDecoration(
                                  counterText: '',
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
                                    labelText: "OTP",
                                    alignLabelWithHint: false,
                                    labelStyle: TextStyle(color: AppColors.textWhiteColor),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.zero
                            ),
                            child: SizedBox(
                              height: 50,
                              width: Dimension.screenWidth*0.85,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                                    backgroundColor: MaterialStatePropertyAll(AppColors.buttonBackgroundColor,
                                    ),
                                    mouseCursor: MaterialStateMouseCursor.clickable,
                                    shadowColor: MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                                    animationDuration: Duration(milliseconds: 1000)
                                ),
                                onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomBarNavigation()));
                                },
                                child: Text("Submit", style: TextStyle(color: AppColors.textWhiteColor)),
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
