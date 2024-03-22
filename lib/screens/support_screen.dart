import 'package:flutter/material.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        primary: true,
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(20,15,10,15),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_outlined,
                color: AppColors.textWhiteColor,
              ),
            ),
          ),
        ),
        title: const Text(
          'Support',
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontFamily: 'Poppins',
            letterSpacing: 0.9,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainBackgroundColor,
        elevation: 0.5,
        excludeHeaderSemantics: true,
        forceMaterialTransparency: false,
        shadowColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: Dimension.screenWidth*0.95 ,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    autofocus: true,
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
        
                        labelText: "Name",
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
              const SizedBox(height: 20),
              SizedBox(
                width: Dimension.screenWidth*0.95 ,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    autofocus: true,
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
        
                        labelText: "Email",
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
              const SizedBox(height: 20),
              SizedBox(
                width: Dimension.screenWidth*0.95 ,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    maxLines: 6,
                    autofocus: true,
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
                        labelText: "Your Message",
                        alignLabelWithHint: true,
                        labelStyle: const TextStyle(
                            color: AppColors.textWhiteColor
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        isCollapsed: false
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.zero
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                        backgroundColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundColor,
                        ),
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        shadowColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                        animationDuration: const Duration(milliseconds: 1000)
        
                    ),
                    onPressed: () {
                    },
                    child: const Text("Submit", style: TextStyle(color: AppColors.textWhiteColor)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
