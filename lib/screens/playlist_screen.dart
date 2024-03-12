import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/widgets/playlist_tabs_widget.dart';
import '../utils/colors_constant.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({super.key});

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        appBar: AppBar(
          primary: true,
          leadingWidth: 80,
          toolbarHeight: 80,
          title: const Text(
            'Playlist',
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
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: PlaylistTab()
              ),
            ),

          ],
        ),
      ),

    );
  }
}
