import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';

class HomePageTab extends StatefulWidget {
  const HomePageTab({super.key});

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> with TickerProviderStateMixin {

  List images = [
    'tab_one.png'
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.mainBackgroundColor,
              ),
              child: TabBar(
                indicatorWeight: 2,
                isScrollable: true,
                padding: const EdgeInsets.all(0),
                labelColor: const Color(0xFFFA0000),
                indicatorColor: const Color(0xFFFA0000),
                indicatorPadding: const EdgeInsets.all(0),
                unselectedLabelColor: Colors.white,
                labelPadding: const EdgeInsets.only(right: 20),
                dividerColor: const Color(0xFFFFC6C6),
                tabAlignment: TabAlignment.start,
                controller: _tabController,
                tabs: const [
                  Tab(
                    child: Text(
                        "Music",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                      // textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Podcast",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Streaming",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.mainBackgroundColor
              ),
              width: double.maxFinite,
              height: Dimension.screenHeight*1.2,
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Work in Music Tab
                  Tab(
                    child: Container(
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
                          Divider(
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
                          SizedBox(height: Dimension.height20,),
                          Divider(
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
                    ),
                  ),




                  const Tab(text: "Cities",),
                  const Tab(text: "World",),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
