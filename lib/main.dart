// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/Storage.dart';
import 'package:hiphop/route/appRoute.dart';
import 'package:hiphop/screens/categories/genre_details_screen.dart';
import 'package:hiphop/screens/categories/genre_screen.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/screens/music_player_screen.dart';
import 'package:hiphop/screens/sign_up_screen.dart';
import 'package:hiphop/screens/signin_page.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/widgets/small_text.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Storage.initStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hiphop Streets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, background: AppColors.mainBackgroundColor),
        useMaterial3: true,
      ),
      initialRoute: AppRoute.splashScreen,
      onGenerateRoute: AppRoute.routeController,
    );
  }
}
