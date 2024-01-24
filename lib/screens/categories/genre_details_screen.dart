// ignore_for_file: unnecessary_import, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:hiphop/screens/albums/single_album_screen.dart';
import 'package:hiphop/screens/categories/genre_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/Models/genre_details_screen_data.dart';

class GenreDetailsPage extends StatelessWidget {
  const GenreDetailsPage({super.key});

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GenreScreen()),
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
          'Genres Details',
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                  'Indie Rock',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: Dimension.height20,),

              Container(
                height: Dimension.screenHeight/1.7,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                     children: List.generate(GenresDetail.length, (index){
                       return InkWell(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const SingleAlbumScreen()),
                           );

                         },
                         child: Container(
                           margin: const EdgeInsets.only(bottom: 5,left: 5),
                           width: Dimension.screenWidth/2.3,
                           height: 200,
                           padding: EdgeInsets.only(left: 5,right: 5),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 width: Dimension.screenWidth/2.5,
                                 height: 150,
                                 decoration: BoxDecoration(
                                     color: Colors.blue,
                                     image: DecorationImage(
                                         image: AssetImage(GenresDetail[index].image),
                                         fit: BoxFit.cover
                                     ),
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                               ),
                               SizedBox(height: 05,),
                               Text(
                                 GenresDetail[index].name,
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 14,
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               Text(
                                 GenresDetail[index].desc,
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 12,
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w400 ,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       );
                     })
                  ),
                ),
              ),



              // Container(
              //   width: double.maxFinite,
              //   height: Dimension.screenHeight/1.5,
              //   child: ListView.builder(
              //     itemCount: GenresDetail.length,
              //       itemBuilder: (_,index){
              //         return Container(
              //           padding: EdgeInsets.only(left: 5,right: 5),
              //           margin: EdgeInsets.only(left: 2, top: 2,bottom: 10,right: 2),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10)
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                     width: Dimension.screenWidth/2.5,
              //                     height: 150,
              //                     decoration: BoxDecoration(
              //                         color: Colors.blue,
              //                         image: DecorationImage(
              //                             image: AssetImage(GenresDetail[index].image),
              //                             fit: BoxFit.cover
              //                         ),
              //                         borderRadius: BorderRadius.circular(10)
              //                     ),
              //                   ),
              //                   SizedBox(height: 05,),
              //                   Text(
              //                     GenresDetail[index].name,
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                       fontFamily: 'Poppins',
              //                       fontWeight: FontWeight.w500,
              //                     ),
              //                   ),
              //                   Text(
              //                     GenresDetail[index].desc,
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 12,
              //                       fontFamily: 'Poppins',
              //                       fontWeight: FontWeight.w400 ,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                     width: Dimension.screenWidth/2.5,
              //                     height: 150,
              //                     decoration: BoxDecoration(
              //                         color: Colors.blue,
              //                         image: DecorationImage(
              //                             image: AssetImage('assets/images/genre_details.png'),
              //                             fit: BoxFit.cover
              //                         ),
              //                         borderRadius: BorderRadius.circular(10)
              //                     ),
              //                   ),
              //                   SizedBox(height: 05,),
              //                   Text(
              //                     'Truth is a Beautiful',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                       fontFamily: 'Poppins',
              //                       fontWeight: FontWeight.w500,
              //                     ),
              //                   ),
              //                   Text(
              //                     'London Grammar',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 12,
              //                       fontFamily: 'Poppins',
              //                       fontWeight: FontWeight.w400 ,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         );
              //       }),
              // )
            ],
          ),
        ),
      )
    );
  }
}
