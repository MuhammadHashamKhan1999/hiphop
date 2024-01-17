import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/homepage_image_slider.dart';
import 'package:hiphop/widgets/homepage_tabs.dart';
import 'package:hiphop/widgets/on_board_image_slider.dart';



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
              onTap: (){},
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
            child: Padding(

              padding: const EdgeInsets.only(left: 20.0, right: 20,top: 0),
              child: ClipRRect(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  height: Dimension.height30*2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFA30000),
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                      width: 1.5
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent.withOpacity(0.1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 25,
                        child: Icon(Icons.search,color: Colors.grey.shade500,size: 32,),
                      ),
                      Container(
                        width: Dimension.screenWidth/1.8,
                        child: Container(
                          alignment: Alignment.center,
                          child: const TextField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                              hintText: "Search Favorite Music",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 16
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white70,
                            ),


                          ),
                        ),

                      ),
                      Container(
                        width: Dimension.width25*2,
                        height: Dimension.height25*2,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFFA30000),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFFA30000),
                              blurRadius: 6.0,
                              offset:  Offset(2,1),
                              spreadRadius: 4
                            )
                          ]
                        ),
                        child: const Icon(Icons.mic_none_outlined,color: Colors.white,size: 30)
                      )
                    ],
                  ),
                ),
              ),
            ),
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
