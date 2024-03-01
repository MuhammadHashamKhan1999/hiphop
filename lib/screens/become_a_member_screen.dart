import 'package:flutter/material.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:hiphop/widgets/bottom_bar_navigation.dart';

class BecomeAMemberScreeen extends StatefulWidget {
  const BecomeAMemberScreeen({super.key});

  @override
  State<BecomeAMemberScreeen> createState() => _BecomeAMemberScreeenState();
}

class _BecomeAMemberScreeenState extends State<BecomeAMemberScreeen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/homepagebg.png"),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          primary: true,
          leadingWidth: 80,
          toolbarHeight: 80,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(20,15,10,15),
              decoration: BoxDecoration(
                  color: AppColors.buttonBackgroundColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.textWhiteColor,
                ),
              ),
            ),
          ),
          title: const Text(
            'Become A Member',
            style: TextStyle(
              color: AppColors.textWhiteColor,
              fontFamily: 'Poppins',
              letterSpacing: 0.6,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          excludeHeaderSemantics: true,
          forceMaterialTransparency: false,
          shadowColor: Colors.white70,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.westtransit.com/wp-content/uploads/2016/06/team-1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "Janine Franco",
                    style: TextStyle(
                      color: AppColors.textWhiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 140),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: AppColors.mainBackgroundColor,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      labelText: 'Your Name (As an Artist)',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Customize the color of the underline
                      ),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Customize the color of the underline
                      ),
                      focusColor: AppColors.mainBackgroundColor,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: AppColors.mainBackgroundColor,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      labelText: 'About you',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Customize the color of the underline
                      ),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Customize the color of the underline
                      ),
                      focusColor: AppColors.mainBackgroundColor,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.zero
                  ),
                  child: SizedBox(
                    height: 50,
                    width: Dimension.screenWidth*0.85,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                          backgroundColor: MaterialStatePropertyAll(AppColors.buttonBackgroundColor,
                          ),
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          shadowColor: MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                          animationDuration: Duration(milliseconds: 1000)
                      ),
                      onPressed: (){
                        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                            builder: (_) => BottomBarNavigation(),
                            ),
                            );
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomBarNavigation()));
                      },
                      child: Text("Submit", style: TextStyle(color: AppColors.textWhiteColor)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
