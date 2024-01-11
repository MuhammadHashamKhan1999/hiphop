import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/screens/homepage.dart';
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
      home: const HomePage(),


    );
  }
}
