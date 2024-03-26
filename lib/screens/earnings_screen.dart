import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';

class EarningsScreen extends StatefulWidget {
  const EarningsScreen({super.key});

  @override
  State<EarningsScreen> createState() => _EarningsScreenState();
}

class _EarningsScreenState extends State<EarningsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
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
        title: Row(
          children: [
            const Text(
              'Earnings',
              style: TextStyle(
                color: AppColors.textWhiteColor,
                fontFamily: 'Poppins',
                letterSpacing: 0.9,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 2),
            Image.asset("assets/images/ic_coin.png", height: 25, width: 25),
          ],
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainBackgroundColor,
        elevation: 0.5,
        excludeHeaderSemantics: true,
        forceMaterialTransparency: false,
        shadowColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Listen & earn',
                style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://hips.hearstapps.com/hmg-prod/images/2023-ford-gt-mk-iv-02-1670543667.jpg'
                              ),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width *.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Complete & Earn',
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child:  const Center(
                                      child: Text(
                                        'Finished',
                                        style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Poppins'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '37:28 min',
                              style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'Poppins'),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width *.6,
                              color: Colors.white24,
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
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
                                    child:  const Center(
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/images/ic_coins.png", height: 20, width: 20),
                                      const SizedBox(width: 2),
                                      const Text(
                                        '\$24',
                                        style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.menu, color: Colors.white, size: 18),
                                      SizedBox(width: 4),
                                      Icon(Icons.more_vert, color: Colors.white, size: 18),
                                    ],
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
        ),
      ),
    );
  }
}
