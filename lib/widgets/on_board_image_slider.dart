import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

  final sliderImages = [
    Image.asset("assets/images/slider_01.png"),
    Image.asset("assets/images/slider_01.png"),
    Image.asset("assets/images/slider_01.png")
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
              items: sliderImages,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                height: 100,
                viewportFraction: 2,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason){
                  setState(() {
                    myCurrentIndex = index;
                  });
                }
              ),
          ),
          SizedBox(height: 10,),
          AnimatedSmoothIndicator(
              activeIndex: myCurrentIndex,
              count:sliderImages.length,
            effect: const WormEffect(),
          )
        ],
      ),
    );
  }
}
