import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
      padding: const EdgeInsets.only(top:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Podcasts',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GenreScreen()),
                    );
                  },
                  child: Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Text(
                        "\$4.99",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: Dimension.height20,),

          Container(
            width: double.maxFinite,
            height: Dimension.screenHeight/2.5,
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
                    title: Text('Drawing Room ', style: TextStyle(color: Colors.white),),
                    trailing: Container(
                      child: Text('30:00', style: TextStyle(color: Colors.grey, fontSize: 12),),
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
