import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget{

  Color? color;
  late double size;
  late final String text;
  late TextOverflow overflow;
  var height;


  SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    this.overflow = TextOverflow.visible,
    this.height = 1.2,


  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        overflow: overflow,
        fontSize: size,
        color: color,
        height: height,
      ),
      textAlign: TextAlign.center,

    );
  }

}