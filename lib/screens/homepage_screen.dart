// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, unnecessary_import, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/signin_page.dart';
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
              height: Dimension.height30*7.2,
              child: DrawerHeader(

                margin: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile_picture.png'),
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
                    'Main Dashboard',
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
                      Icons.payment
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Payments',
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

              },
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.support_sharp
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Support',
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

              },
            ),
            Divider(height: 2,color: AppColors.greyColor,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top:10),
              child: Stack(
                children: [
                  InkWell(
                    onTap:(){

                    },
                    child: Container(

                      width: Dimension.width20*14,
                      height: Dimension.width20*11,
                      child: Container(
                        child: Image.asset(
                          'assets/images/become_member.png',
                          fit: BoxFit.cover,
                          scale: 1.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
                      return const SignInPage();
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
                    decoration: BoxDecoration(
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
