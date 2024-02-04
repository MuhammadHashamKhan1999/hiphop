import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/utils/dimensions.dart';
import '../utils/colors_constant.dart';
import '../widgets/bottom_bar_navigation.dart';
import '../widgets/small_text.dart';
import 'homepage_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

                          // Enter Your Email Address Text Fields
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                autofocus: false,
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
                                    labelStyle: TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false
                                ),
                              ),
                            ),
                          ),


                          // Enter Your Password Text Fields
                          SizedBox(
                            width: Dimension.screenWidth*0.95 ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                autofocus: false,
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

                                    labelText: "Last Name",
                                    alignLabelWithHint: false,
                                    labelStyle: TextStyle(
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
                                autofocus: false,
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

                                    labelText: "Enter Your Email",
                                    alignLabelWithHint: false,
                                    labelStyle: TextStyle(
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
                                autofocus: false,
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
                                    labelStyle: TextStyle(
                                        color: AppColors.textWhiteColor
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    isCollapsed: false
                                ),
                              ),
                            ),
                          ),



                          SizedBox(height: Dimension.height20),

                          // Sign In Button
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.zero
                            ),
                            child: SizedBox(
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
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SignInPage()
                                    ),
                                  );

                                },
                                child: Text("Sign Up", style: TextStyle(color: AppColors.textWhiteColor)),
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
                                      borderRadius: BorderRadius.all(Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Container(
                                      // padding: EdgeInsets.only(left: 20),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/images/twitter_icon.png"),
                                          SizedBox(width: Dimension.width05,),
                                          SmallText(text: "Twitter", size: 16.0,)
                                        ],
                                      ),
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
              ])),
    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageScreen()));
  }

}
