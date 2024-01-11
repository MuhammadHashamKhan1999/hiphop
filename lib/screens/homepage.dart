import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/on_board_image_slider.dart';
import 'package:hiphop/widgets/small_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
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
                        fit: BoxFit.cover),
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

                              // hintText: 'Enter your email',
                              // hintStyle: const TextStyle(
                              //     color: AppColors.textWhiteColor,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 14,
                              //     wordSpacing: 4.0,
                              //     letterSpacing: 1.0
                              //
                              // ),
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

                    SizedBox(height: Dimension.height10),

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

                              // hintText: 'Enter your password',
                              // hintStyle: const TextStyle(
                              //     color: AppColors.textWhiteColor,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 14,
                              //     wordSpacing: 4.0,
                              //     letterSpacing: 1.0
                              //
                              // ),
                              labelText: "Enter Your Password",
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

                    SizedBox(height: Dimension.height10),

                    SmallText(text: "Forgot your passowrd?"),

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
                            shape: MaterialStatePropertyAll(LinearBorder.start()),
                            backgroundColor: MaterialStatePropertyAll(AppColors.buttonBackgroundColor,
                            ),
                            mouseCursor: MaterialStateMouseCursor.clickable,
                            shadowColor: MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                            animationDuration: Duration(milliseconds: 1000)

                          ),
                          onPressed: () {  },
                          child: Text("Sign In", style: TextStyle(color: AppColors.textWhiteColor),),
                        ),
                      ),
                    ),

                    SizedBox(height: Dimension.height20),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160,
                            height: 60,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.buttonBackgroundColor,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(15.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/slider_img_01.png")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            height: 60,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: AppColors.buttonBackgroundColor
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: Dimension.height30),

                    SmallText(text: "Don't Have an Account? Let's Sign Up"),





                  ],
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
