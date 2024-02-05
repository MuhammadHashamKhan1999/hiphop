import 'package:flutter/material.dart';

import '../Models/genre_screen_data.dart';
import '../utils/colors_constant.dart';
import '../widgets/search_bar.dart';
import 'homepage_screen.dart';
import 'package:hiphop/utils/dimensions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
              MaterialPageRoute(builder: (context) => const HomePageScreen()),
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
          'Search',
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontFamily: 'Poppins',
            letterSpacing: 0.9,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 50,
            child: const Text(
              'clean',
              style: TextStyle(
                  color: AppColors.buttonBackgroundColor,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
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
              margin: const EdgeInsets.only(top: 25),
              child: const SearchBarWithIcon(),
            ),
            SizedBox(height: Dimension.height20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: double.maxFinite,
                height: Dimension.screenHeight/1.5,
                child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                    itemCount: Genres.length,
                    itemBuilder: (_,index){
                      return InkWell(
                        onTap: (){


                        },
                        child: const ListTile(
                          textColor: AppColors.textWhiteColor,
                          title: Text('Hello World'),
                        )
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
