import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/widgets/on_board_image_slider.dart';
import 'package:hiphop/widgets/small_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: Stack(children: [
          Column(
            children: [
              SizedBox(
                height: 600,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/homepagebg.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Column(
                children: [
                  ImageSlider(),
                  Text(
                    "Hello World",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
