import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/genre_screen_data.dart';
import '../utils/colors_constant.dart';
import '../widgets/search_bar.dart';
import 'homepage_screen.dart';
import 'package:hiphop/utils/dimensions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = -1;
  List<String> _items = [
    "Asian",
    "African",
    "Avantgrade",
    "Blue",
    "Electronic",
    "Country",
    "Folk",
    "Hip Hop",
    "Jazz"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        primary: true,
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 10, 15),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Icon(
                Icons.arrow_back_outlined,
                color: AppColors.textWhiteColor,
              ),
            ),
          ),
        ),
        title: const Text(
          'Search',
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontFamily: 'Poppins',
            letterSpacing: 0.9,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 50,
            child: const Text(
              'clean',
              style: TextStyle(
                  color: AppColors.buttonBackgroundColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: AppColors.mainBackgroundColor,
        elevation: 0.5,
        excludeHeaderSemantics: true,
        forceMaterialTransparency: false,
        shadowColor: Colors.white70,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Text(
              'LOCATION',
              style: TextStyle(
                fontSize: 17,
                color: AppColors.buttonBackgroundColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Colors.white60,
              thickness: .3,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'United States',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.buttonBackgroundColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(
              color: Colors.white60,
              thickness: .3,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New York',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.buttonBackgroundColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'GENRES',
              style: TextStyle(
                fontSize: 17,
                color: AppColors.buttonBackgroundColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Colors.white60,
              thickness: .3,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  itemCount: _items.length, // Number of items
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of items per row
                    crossAxisSpacing: 10.0, // Spacing between columns
                    childAspectRatio: 2,
                    mainAxisSpacing: 10.0, // Spacing between rows
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? AppColors.buttonBackgroundColor
                                : AppColors.paymentCardBorderColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            _items[index],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 40),
            const Text(
              'KEYWORD',
              style: TextStyle(
                fontSize: 17,
                color: AppColors.buttonBackgroundColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Colors.white60,
              thickness: .3,
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter your text',
                        hintStyle: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w300),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15.0),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero
              ),
              child: SizedBox(
                width: Dimension.screenWidth*0.85,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                      backgroundColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundColor,
                      ),
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      shadowColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                      animationDuration: const Duration(milliseconds: 1000)

                  ),
                  onPressed: () {
                  },
                  child: Text("Search", style: TextStyle(color: AppColors.textWhiteColor)),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
