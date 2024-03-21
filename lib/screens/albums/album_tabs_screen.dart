// ignore_for_file: unnecessary_import, unused_import, no_leading_underscores_for_local_identifiers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hiphop/screens/albums/album_music_tab_screen.dart';
import 'package:hiphop/screens/albums/album_podcast_tab_screen.dart';
import 'package:hiphop/screens/albums/album_streaming_tab_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/most_played_tracks.dart';
import 'package:hiphop/widgets/music_tab_screen.dart';

class AlbumTabsScreen extends StatefulWidget {
  const AlbumTabsScreen({super.key});

  @override
  State<AlbumTabsScreen> createState() => _AlbumTabsScreenState();
}

class _AlbumTabsScreenState extends State<AlbumTabsScreen> with TickerProviderStateMixin {

  List images = [
    'tab_one.png'
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
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
              physics: BouncingScrollPhysics(),
              controller: _tabController,
              children: const [
                Tab(child: AlbumMusicTabScreen()),
                Tab(child: AlbumPodcastTabScreen()),
                Tab(child: AlbumStreamingTabScreen()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
