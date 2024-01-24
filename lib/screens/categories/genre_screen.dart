// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, unnecessary_import, no_leading_underscores_for_local_identifiers, unused_local_variable


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/categories/genre_details_screen.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/search_bar.dart';
import 'package:hiphop/Models/genre_screen_data.dart';

class GenreScreen extends StatelessWidget {
  const GenreScreen({super.key});



  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController;
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        primary: true,
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePageScreen()),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20,15,10,15),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Icon(
                  Icons.arrow_back_outlined,
                color: AppColors.textWhiteColor,

              ),
            ),
          ),
        ),
        title: Text(
            'Genres',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 25),
                child: SearchBarWithIcon(),
            ),
            SizedBox(height: Dimension.height20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.maxFinite,
                height: Dimension.screenHeight/1.5,
                child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: Genres.length,
                    itemBuilder: (_,index){
                     return InkWell(
                       onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const GenreDetailsPage()),
                         );

                       },
                       child: Container(
                         width: double.maxFinite,
                         height: 150,
                         margin: EdgeInsets.only(bottom: 10),
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.circular(10),
                           gradient: LinearGradient(
                             colors: [
                               Color(0xCCA30000),
                               Colors.transparent
                             ]
                           ),
                           image: DecorationImage(
                             image: AssetImage(Genres[index].image),
                             fit: BoxFit.cover
                           ),

                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               Genres[index].name,
                               style: TextStyle(
                                 color: AppColors.textWhiteColor,
                                 fontFamily: 'Poppins',
                                 fontSize: 22,
                                 fontWeight: FontWeight.w400
                               ),
                             ),
                           ],
                         ),

                       ),
                     );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
