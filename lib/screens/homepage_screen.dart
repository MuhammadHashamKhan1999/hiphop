// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, unnecessary_import, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/become_a_member_screen.dart';
import 'package:hiphop/screens/payment_screen.dart';
import 'package:hiphop/screens/settings_screen.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/screens/support_screen.dart';
import 'package:hiphop/screens/user_profile_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/homepage_image_slider.dart';
import 'package:hiphop/widgets/homepage_tabs.dart';
import 'package:hiphop/widgets/on_board_image_slider.dart';
import 'package:hiphop/widgets/search_bar.dart';



class HomePageScreen extends StatelessWidget{
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.mainBackgroundColor,
        child: ListView(
          children: [
            Container(
              height: Dimension.height30*9,
              child: DrawerHeader(
                margin: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/hiphop_logo.png')
                            )
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.buttonBackgroundColor
                          ),
                          child: Builder(

                            builder: (context)=>InkWell(
                              onTap: (){
                                Scaffold.of(context).closeDrawer();
                              },

                              child: Container(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: AppColors.textWhiteColor,
                                ),
                              ),

                            ),

                          ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfileScreen(showBack: true,))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: 75,
                            height: 75,
                            child: CircleAvatar(
                              // backgroundImage: AssetImage('assets/images/profile_picture.png'),
                              backgroundImage: NetworkImage('https://www.westtransit.com/wp-content/uploads/2016/06/team-1.jpg')

                      ),
                          ),
                          SizedBox(width: Dimension.width10,),
                          Text(
                            'David Jones',
                            style: TextStyle(
                                color: AppColors.textWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.pie_chart
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              selectedColor: AppColors.buttonBackgroundColor,
              selected: true,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePageScreen()),
                );

              },
            ),

            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.settings_outlined
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
              selectedTileColor: Colors.red,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
              },
            ),
            Divider(height:1,color: AppColors.greyColor,),

            SizedBox(height: 5,),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                        Icons.card_membership
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Become a Member',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
              selectedTileColor: Colors.red,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const BecomeAMemberScreeen())),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                        Icons.logout_rounded
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              iconColor: AppColors.textWhiteColor,
              selectedColor: AppColors.buttonBackgroundColor,
              textColor: AppColors.textWhiteColor,
              selectedTileColor: Colors.red,
              onTap: (){
                Navigator.of(context, rootNavigator: true)
                    .pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const SignInScreen();
                    },
                  ),
                      (_) => false,
                );

              },
            ),
          ],
        ),
      ),

      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.mainBackgroundColor,
            leading: Container(
              child: Builder(
                  builder: (context)=>InkWell(
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // color: AppColors.mainBackgroundColor,
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/menuIcon.png"),
                        fit: BoxFit.cover
                      )

                    ),
                  ),

              ),

              ),
            ),
            expandedHeight: Dimension.screenWidth/1.5,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: const SliderScreen()
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 5),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Following',
                          style: TextStyle(
                              color: AppColors.textWhiteColor,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        // InkWell(
                        //   onTap: (){},
                        //   child: Row(
                        //     children: [
                        //       Text(
                        //         'View All',
                        //         style: TextStyle(
                        //           color: Colors.grey.shade200,
                        //           fontFamily: 'Poppins',
                        //           fontSize: 14,
                        //           fontWeight: FontWeight.w400,
                        //           decorationStyle: TextDecorationStyle.solid,
                        //           decorationColor: Colors.black,
                        //           decorationThickness: 2,
                        //         ),
                        //       ),
                        //       Icon(
                        //         Icons.arrow_forward_ios_outlined,
                        //         color: Colors.grey.shade200,
                        //         size: 14,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: Dimension.height20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 220,
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  width: 200,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: const AssetImage('assets/images/artist_images/artist_01.png'),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.5),
                                          BlendMode.darken
                                      ),
                                    ),
                                  ),
                                  // child: const Center(
                                  //   child: Text(
                                  //     "Chill Out",
                                  //     style: TextStyle(
                                  //         fontSize: 26,
                                  //         color: Colors.white,
                                  //         fontFamily: 'Poppins',
                                  //         fontWeight: FontWeight.w500
                                  //     ),
                                  //   ),
                                  // ),
                                ),
                                Container(
                                  height: Dimension.height30*2,
                                  padding: const EdgeInsets.only(top: 10 ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Eric Saede",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text("Dance, rock",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),
                          SizedBox(
                            width: 220,
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  width: 200,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: const AssetImage('assets/images/artist_images/artist_01.png'),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.5),
                                          BlendMode.darken
                                      ),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Chill Out",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: Dimension.height30*2,
                                  padding: const EdgeInsets.only(top: 10 ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Eric Saede",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text("Dance, rock",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),
                          SizedBox(
                            width: 220,
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  width: 200,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: const AssetImage('assets/images/artist_images/artist_01.png'),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.5),
                                          BlendMode.darken
                                      ),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Chill Out",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: Dimension.height30*2,
                                  padding: const EdgeInsets.only(top: 10 ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Eric Saede",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text("Dance, rock",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),


                        ],
                      ),
                    ),
                  ],
                ),
              )
          ),
          SliverToBoxAdapter(
            child: SearchBarWithIcon()
          ),

          const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: HomePageTab()
                ),
            ),

        ],
      ),

    );
  }
}
