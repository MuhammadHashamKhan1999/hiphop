import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiphop/utils/dimensions.dart';
import '../utils/colors_constant.dart';
import '../widgets/homepage_image_slider.dart';
import 'homepage_screen.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,

      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/homepagebg.png"),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 20.0, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.buttonBackgroundColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Icon(
                            FluentIcons.resize_small_24_filled,
                            color: AppColors.textWhiteColor,
                          ),
                        ),
                      ),
                      const Text(
                        'Player',
                        style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontFamily: 'Poppins',
                          letterSpacing: 0.9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        'Lyrics',
                        style: TextStyle(
                            color: AppColors.buttonBackgroundColor,
                            fontFamily: 'Poppins',
                            letterSpacing: 0.9,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),



                    ],
                  ),
                ),
                SizedBox(height: Dimension.height20,),
                Container(
                  width: double.maxFinite,
                  height: 250,
                  decoration: const BoxDecoration(
                      color: Colors.transparent
                  ),
                ),
                
                const Text(
                  'Drawing Room',
                  style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
                const Text(
                  'Thievery Corporation',
                  style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.1,
                  ),
                ),
                SizedBox(height: 80,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: AppColors.greyColor
                          ),
                          child: const Icon(
                              CupertinoIcons.backward_end,
                            size: 16,
                            color: AppColors.textWhiteColor,

                          ),
                        ),
                      )
                    ),
                    const SizedBox(width: 40,),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: AppColors.buttonBackgroundColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red,
                                  offset: Offset(0, 2),
                                  spreadRadius: 10,
                                  blurRadius: 20
                                )
                              ]
                            ),
                            child: const Icon(
                              CupertinoIcons.pause,
                              size: 28,
                              weight: 20,
                              color: AppColors.textWhiteColor,

                            ),
                          ),
                        )
                    ),
                    const SizedBox(width: 40,),
                    SizedBox(
                        width: 35,
                        height: 35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: AppColors.greyColor
                            ),
                            child: const Icon(
                              CupertinoIcons.forward_end,
                              size: 16,
                              color: AppColors.textWhiteColor,

                            ),
                          ),
                        )
                    ),
                  ],
                )

              ],

            ),
          ],
        ),
      )

    );
  }
}

