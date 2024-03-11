// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/screens/categories/genre_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/most_played_tracks.dart';

import '../../screens/music_player_screen.dart';

class PodcastPlaylistScreen extends StatelessWidget {
  const PodcastPlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top:20.0, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            height: Dimension.screenHeight/1.5,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, index){
                  return ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(child: Text('${index+1}',style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 11, fontWeight: FontWeight.w500),),),
                    ),
                    selectedColor: Colors.white,
                    title: Text('Podcast One ', style: TextStyle(color: Colors.white),),
                    trailing: Container(
                      child:ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                            builder: (_) => MusicPlayer(),
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
                    ),
                    horizontalTitleGap: 10,
                  );
                }),
          ),


        ],
      ),
    );
  }
}
