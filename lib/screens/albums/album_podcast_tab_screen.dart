// ignore_for_file: unnecessary_import, unused_import, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hiphop/screens/categories/genre_screen.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/most_played_tracks.dart';

class AlbumPodcastTabScreen extends StatelessWidget {
  const AlbumPodcastTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Latest Podcasts',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              // InkWell(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const GenreScreen()),
              //       );
              //     },
              //     child: Container(
              //       width: 70,
              //       height: 40,
              //       decoration: BoxDecoration(
              //           color: AppColors.buttonBackgroundColor,
              //           borderRadius: BorderRadius.circular(5)),
              //       child: Center(
              //         child: Text(
              //           "\$4.99",
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontFamily: 'Poppins',
              //               fontWeight: FontWeight.w600,
              //               fontSize: 13),
              //         ),
              //       ),
              //     )),
            ],
          ),
          SizedBox(
            height: Dimension.height10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 110,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
                            fit: BoxFit.cover,
                          ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width *.6,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sagittis dolor nec orci tristique',
                            softWrap: true,
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Dateline',
                              style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'Poppins'),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 1,
                              height: 10,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Live now',
                              style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width *.6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: AppColors.buttonBackgroundColor,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child:  Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 5),
                                      Icon(Icons.play_arrow_rounded, color: Colors.white,size: 15),
                                      SizedBox(width: 2),
                                      Text(
                                        'Play',
                                        style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: const [
                                    Icon(Icons.cloud_download_rounded, color: Colors.white, size: 18),
                                    SizedBox(width: 7),
                                    Icon(Icons.menu, color: Colors.white, size: 18),
                                    SizedBox(width: 4),
                                    Icon(Icons.more_vert, color: Colors.white, size: 18),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
