import 'package:flutter/material.dart';
import 'package:hiphop/utils/colors_constant.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.white60, fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15.0),
                ),
                cursorColor: AppColors.buttonBackgroundColor,

              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white60, fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15.0),
                ),
                cursorColor: AppColors.buttonBackgroundColor,

              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'type your message here...',
                  hintStyle: TextStyle(color: Colors.white60, fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15.0),
                ),
                cursorColor: AppColors.buttonBackgroundColor,

              ),
            ),
            const Spacer(),
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
    );
  }
}
