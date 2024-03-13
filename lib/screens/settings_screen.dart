import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:hiphop/route/appRoute.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/screens/payment_screen.dart';
import 'package:hiphop/screens/support_screen.dart';
import 'package:hiphop/screens/user_profile_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool _notificationSwitchValue = false, _autoPlaySwitchValue = false;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            ListTile(
              title: const Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              trailing: Switch(
                activeColor: AppColors.buttonBackgroundColor,
                inactiveThumbColor: AppColors.textWhiteColor,
                value: _notificationSwitchValue,
                onChanged: (value) {
                  setState(() {
                    _notificationSwitchValue = value;
                  });
                },
              ),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const SizedBox(height: 5),
            ListTile(
              title: const Text(
                'Auto Play Tracks',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              trailing: Switch(
                activeColor: AppColors.buttonBackgroundColor,
                inactiveThumbColor: AppColors.textWhiteColor,
                value: _autoPlaySwitchValue,
                onChanged: (value) {
                  setState(() {
                    _autoPlaySwitchValue = value;
                  });
                },
              ),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const SizedBox(height: 5),
            ListTile(
              title: const Text(
                'Edit Your Profile',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              onTap: () => Get.toNamed(AppRoute.editProfileScreen),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const Divider(
              height: 1,
              color: Colors.white60,
              thickness: .3,
            ),
            ListTile(
              title: const Text(
                'Payments',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen())),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const Divider(
              height: 1,
              color: Colors.white60,
              thickness: .3,
            ),
            ListTile(
              title: const Text(
                'Contact Support',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportScreen())),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const Divider(
              height: 1,
              color: Colors.white60,
              thickness: .3,
            ),
            const ListTile(
              title: Text(
                'Legal',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const Divider(
              height: 1,
              color: Colors.white60,
              thickness: .3,
            ),
            const ListTile(
              title: Text(
                'Tell A Friend',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
            ),
            const Divider(
              height: 1,
              color: Colors.white60,
              thickness: .3,
            ),
          ],
        ),
      ),
    );
  }
}
