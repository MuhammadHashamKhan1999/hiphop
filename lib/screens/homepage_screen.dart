import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hiphop/utils/colors_constant.dart';



class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Container(),
      backgroundColor: AppColors.mainBackgroundColor,
      // drawer: Drawer(
      //   width: 300,
      //   backgroundColor: AppColors.mainBackgroundColor,
      //   child: Container(
      //     padding: EdgeInsets.only(top: 40,left: 15, right: 15),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             SizedBox(
      //               width: 100,
      //               child: Container(
      //                 child: Image.asset("assets/images/hiphop_logo.png"),
      //               ),
      //             ),
      //             Container(
      //               child: Image.asset("assets/images/back_button.png")
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      //
      // ),
      appBar: AppBar(
        backgroundColor: AppColors.buttonBackgroundColor,
        title: Text("Hello World"),
        leading: InkWell(
          onTap: () => Scaffold.of(context).openDrawer(),
          // child: Image.asset("assets/images/back_button.png"),
        ),
        iconTheme: IconThemeData(color: AppColors.textWhiteColor,size: 30),
        // leading: new Icon(Icons.menu),
        // centerTitle: true,
      )
    );
  }
}
