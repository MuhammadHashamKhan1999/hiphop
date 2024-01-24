// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final sliderImages = [
    Image.asset("assets/images/slider.png"),
    Image.asset("assets/images/slider.png"),
    Image.asset("assets/images/slider.png")
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimension.height45 * 4,
      width: Dimension.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: CarouselSlider(
              items: sliderImages,
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  height: 100,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedSmoothIndicator(
            activeIndex: myCurrentIndex,
            count: sliderImages.length,
            effect: WormEffect(
                dotWidth: Dimension.width10,
                dotHeight: Dimension.height10,
                dotColor: AppColors.buttonBackgroundLightColor,
                activeDotColor: AppColors.buttonBackgroundColor,
                spacing: 20),
          )
        ],
      ),
    );
  }
}
