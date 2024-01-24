// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_print

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  List imageList = [
    {"id": 1, "image_path":'assets/images/banner.png',"image_text":'Vanilla Shakes', "image_description": 'Every 1st Monday of the month at 9:00pm'},
    {"id": 2, "image_path":'assets/images/banner.png',"image_text":'Vanilla Shakers', "image_description": 'Every 2nd Monday of the month at 9:00pm'},
    {"id": 3, "image_path":'assets/images/banner.png',"image_text":'Vanilla Shakersss', "image_description": 'Every 3rd Monday of the month at 9:00pm'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: (){},
              child: CarouselSlider(
                items: imageList.map(
                        (item){
                          return Stack(
                            children: [
                              Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 400,
                              ),
                              Positioned.fill(
                                child: Container(
                                  color: Colors.black.withOpacity(0.6 ),
                                  // Adjust the opacity and color as needed
                                ),
                              ),
                              Positioned.fill(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        item['image_text'],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          item['image_description'],
                                          style: TextStyle(
                                            color: Colors.white,

                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
    }).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 1.5,
                  viewportFraction: 1.5,
                  onPageChanged: (index, reason){
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),
              ),
            ),

            Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((e){
                    print(e);
                    print(e.key);
                    return GestureDetector(
                      onTap: ()=> carouselController.animateToPage(e.key),
                      child: Container(
                        width: currentIndex == e.key ? 50: 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == e.key ? Colors.white : Colors.grey.shade600,
                        ),
                      ),
                    );
                  }).toList(),
                )
            )

          ],
        )
      ],
    );
  }
}
