// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hiphop/screens/music_player_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';

class MostPlayedTracks extends StatelessWidget {
  const MostPlayedTracks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(color: Colors.red),
                      ),
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 20,
                              child: const Icon(
                                CupertinoIcons.heart,
                                color: AppColors.buttonBackgroundColor,
                                size: 24,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '31',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Long Time',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          'Blondie',
                          style: TextStyle(
                            color: Colors.white24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.messenger_outline,
                                color: AppColors.buttonBackgroundColor,
                              ),
                            ),
                            SizedBox(
                              width: Dimension.width10,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.multitrack_audio_outlined,
                    color: AppColors.buttonBackgroundColor,
                    size: 28,
                    shadows: [
                      Shadow(
                        color: AppColors.mainBackgroundColor,
                        blurRadius: 8,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                            builder: (_) => const MusicPlayer(),
                            ),
                            );
                      },
                      child: const Text(
                        'Play',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.buttonBackgroundColor),
                      ),
                  ),


                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
