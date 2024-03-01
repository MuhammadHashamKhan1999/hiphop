import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiphop/screens/become_a_member_screen.dart';
import 'package:hiphop/screens/change_password_screen.dart';
import 'package:hiphop/screens/reset_password_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/bottom_bar_navigation.dart';
import 'package:hiphop/widgets/small_text.dart';

class UserProfileScreen extends StatefulWidget {
  bool showBack = true;
  UserProfileScreen({super.key, required this.showBack});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Replace with your desired status bar color
    ));
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/homepagebg.png"),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          primary: true,
          leadingWidth: 80,
          toolbarHeight: 80,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          leading: Visibility(
            visible: widget.showBack,
            child: InkWell(
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
          ),
          title: const Text(
            'Profile',
            style: TextStyle(
              color: AppColors.textWhiteColor,
              fontFamily: 'Poppins',
              letterSpacing: 0.6,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          excludeHeaderSemantics: true,
          forceMaterialTransparency: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.westtransit.com/wp-content/uploads/2016/06/team-1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "Janine Franco",
                    style: TextStyle(
                      color: AppColors.textWhiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  trailing: Text(
                    'Janine Franco',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                    ),
                  ),
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
                    'Your Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  trailing: Text(
                    'janine@gmail.com',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                    ),
                  ),
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
                    'Change Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                        builder: (_) => ChangePasswordScreen(isForReset: false),
                      ),
                    );
                  },
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
                    'Artist Dashboard',
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
                const SizedBox(height: 30),
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

                      },
                      child: const Text("Apply Changes", style: TextStyle(color: AppColors.textWhiteColor)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(child: Center(child: SmallText(text: "Become a Member")),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const BecomeAMemberScreeen())),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
