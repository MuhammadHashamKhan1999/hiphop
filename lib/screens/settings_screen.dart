import 'package:flutter/material.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
          'Settings',
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.edit, color: AppColors.buttonBackgroundColor),
                SizedBox(width: 20),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.white60,
              thickness: .3,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.privacy_tip_rounded, color: AppColors.buttonBackgroundColor),
                SizedBox(width: 20),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.white60,
              thickness: .3,
            ),
          ],
        ),
      ),
    );
  }
}
