import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/homepage_image_slider.dart';
import 'package:hiphop/widgets/on_board_image_slider.dart';



class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading:
            InkWell(
              onTap: (){},
              child: Image.asset(
                  "assets/images/menuIcon.png",
                  height: Dimension.width20*5,
                  width: Dimension.height30*2.5
              ),
            ),
            expandedHeight: Dimension.screenWidth/2,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: SliderScreen()
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  height: Dimension.height30*2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0XFFA30000),
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
                        width: 50,
                        child: Icon(Icons.search,color: Colors.grey.shade500,size: 32,),
                      ),
                      Container(
                        width: Dimension.screenWidth/1.8,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red
                        ),
                      ),
                      Container(
                        width: Dimension.width25*2.5,
                        height: Dimension.height25*2,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFFA30000),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFA30000),
                              blurRadius: 3.0,
                              offset:  Offset(2,1),
                              spreadRadius: 1
                            )
                          ]
                        ),
                        child: Icon(Icons.mic_none_outlined,color: Colors.white,size: 30)

                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 400,
                  color: Colors.pink,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
