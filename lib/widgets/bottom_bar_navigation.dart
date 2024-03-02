// ignore_for_file: unused_import, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/screens/playlist_screen.dart';
import 'package:hiphop/screens/search_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../screens/user_profile_screen.dart';


class BottomBarNavigation extends StatelessWidget {
  const BottomBarNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomePageScreen(),
        SearchScreen(),
        PlayListScreen(),
        UserProfileScreen(showBack: false,),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: Color(0xFFAB3035),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.search_rounded,size: 28,),
          title: ("Search"),
          activeColorPrimary: Color(0xFFAB3035),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.headphones,size: 28,),
          title: ("Playlist"),
          activeColorPrimary: Color(0xFFAB3035),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person_2_outlined,size: 28,),
          title: ("Account"),
          activeColorPrimary: Color(0xFFAB3035),
          inactiveColorSecondary: Colors.white,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      margin: EdgeInsets.only(top: 10),
      navBarHeight: 60,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xFF1E1E1E), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
        border: Border(
          top: BorderSide(
            color: Color(0xFF5D5D5D),
            width: 1
          )
        )
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
      // Choose the nav bar style with this property.
    );
  }
}
