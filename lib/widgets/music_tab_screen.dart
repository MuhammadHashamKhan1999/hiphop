// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/screens/categories/genre_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/most_played_tracks.dart';

class MusicTabHomeScreen extends StatelessWidget {
  const MusicTabHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top:20.0,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Browse by Genre',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GenreScreen()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey.shade200,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.black,
                        decorationThickness: 2,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade200,
                      size: 14,
                    ),
                  ],
                ),
              ),
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
                  width: 250,
                  height: 150,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: const AssetImage('assets/images/tab_one.png'),
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
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: 250,
                  height: 150,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: const AssetImage('assets/images/tab_one.png'),
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
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: 250,
                  height: 150,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: const AssetImage('assets/images/tab_one.png'),
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
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: 250,
                  height: 150,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: const AssetImage('assets/images/tab_one.png'),
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
                ),

              ],
            ),
          ),
          SizedBox(height: Dimension.height20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Album',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey.shade200,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.black,
                        decorationThickness: 2,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade200,
                      size: 14,
                    ),
                  ],
                ),
              ),
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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

              ],
            ),
          ),
          const Divider(
            color: Color(0xFF919191),
          ),
          SizedBox(height: Dimension.height20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most Played Tracks',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey.shade200,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.black,
                        decorationThickness: 2,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade200,
                      size: 14,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Dimension.height10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MostPlayedTracks(),
              const Divider(
                color: Color(0xFF919191),
              ),
              MostPlayedTracks(),
            ],
          ),
          SizedBox(height: Dimension.height20,),
          const Divider(
            color: Color(0xFF919191),
          ),
          SizedBox(height: Dimension.height20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Artist',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey.shade200,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.black,
                        decorationThickness: 2,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade200,
                      size: 14,
                    ),
                  ],
                ),
              ),
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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
                  width: 250,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/tab_one.png'),
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
                            Text("LOOV",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text("Mat Bastard",
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
