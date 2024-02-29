// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/categories/genre_details_screen.dart';
import 'package:hiphop/screens/categories/genre_screen.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/screens/music_player_screen.dart';
import 'package:hiphop/screens/sign_up_screen.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/widgets/small_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,background: AppColors.mainBackgroundColor),
        useMaterial3: true,
      ),
      home: const SignInPage(),
    );
  }
}
