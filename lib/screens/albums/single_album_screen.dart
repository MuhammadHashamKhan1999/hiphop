// ignore_for_file: unused_import, unnecessary_import, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/albums/album_tabs_screen.dart';
import 'package:hiphop/screens/categories/genre_details_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';


class SingleAlbumScreen extends StatelessWidget {
  const SingleAlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GenreDetailsPage()),
            );
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
          'Album',
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontFamily: 'Poppins',
            fontSize: 18,
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0,bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 95,
                      height: 95,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('assets/images/slider_img_01.png'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Fragile States',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: Dimension.height20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Moonbeam',
                              style:TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                            ),
                            Text(
                              'Indie Rock',
                              style:TextStyle(
                                color: Colors.grey.shade500,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),


                      ],
                    ),
                    SizedBox(width: Dimension.width20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height15,),
              AlbumTabsScreen(),


            ],
          ),
        ),
      )
    );
  }
}
