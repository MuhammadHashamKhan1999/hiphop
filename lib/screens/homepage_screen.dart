// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

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
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.mainBackgroundColor,
            leading:
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                );
              },
              child: Image.asset(
                  "assets/images/menuIcon.png",
                  height: Dimension.width20*10,
                  width: Dimension.height30*3
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
