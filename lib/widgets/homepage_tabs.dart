import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/most_played_tracks.dart';
import 'package:hiphop/widgets/music_tab_screen.dart';

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
              height: Dimension.screenHeight*1.5,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // Work in Music Tab
                  Tab(
                    child: MusicTabHomeScreen(),
                  ),




                  Tab(text: "Cities",),
                  Tab(text: "World",),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
