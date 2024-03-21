import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/dimensions.dart';

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({super.key});

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: (){
            Get.back();
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
          'Artist',
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontFamily: 'Poppins',
            fontSize: 18,
            letterSpacing: 0.9,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainBackgroundColor,
        elevation: 0.5,
        excludeHeaderSemantics: true,
        forceMaterialTransparency: false,
        shadowColor: Colors.white70,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 95,
                        height: 95,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('assets/images/slider_img_01.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Moonbeam',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: Dimension.height20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '175 Tracks',
                                style:TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Grunge, Rock',
                                style:TextStyle(
                                  color: Colors.grey.shade500,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: Dimension.width20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.buttonBackgroundColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(color: Colors.white24, width: MediaQuery.of(context).size.width, height: 1),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, aliquam erat volutpat. Phasellus nec sapien vel sem ultrices suscipit vitae eu urna. Nullam malesuada ex nec justo hendrerit, eu efficitur magna tristique. Curabitur ac sollicitudin elit. Suspendisse potenti. In hac habitasse platea dictumst',
                      style:TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(color: Colors.white24, width: MediaQuery.of(context).size.width, height: 1),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'More by: Moonbeam',
                      style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black,
                              decorationThickness: 2,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey.shade200,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          width: 150.0,
                          height: 150.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://blog.hootsuite.com/wp-content/uploads/2023/03/how-to-add-music-to-instagram-post.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'LOOV',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'Mat Bastard',
                            style:TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(color: Colors.white24, width: MediaQuery.of(context).size.width, height: 1),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Popular Tracks',
                      style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black,
                              decorationThickness: 2,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey.shade200,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, // Set shrinkWrap to true
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(child: Text('${index+1}',style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 11, fontWeight: FontWeight.w500),),),
                        ),
                        selectedColor: Colors.white,
                        title: Row(
                          children: [
                            Image.network("https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                              height: 50, width: 50, fit: BoxFit.cover,),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Longtime' , style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                                Text('R&b, Dance', style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ))
                              ],
                            ),
                          ],
                        ),
                        trailing: const Text('30:00', style: TextStyle(color: Colors.grey, fontSize: 12),),
                        horizontalTitleGap: 10,
                      ),
                      const SizedBox(height: 8),
                      Container(color: Colors.white24, width: MediaQuery.of(context).size.width, height: 1),
                      const SizedBox(height: 8),
                    ],
                  );
                },
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Popular Podcasts',
                      style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black,
                              decorationThickness: 2,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey.shade200,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, // Set shrinkWrap to true
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(child: Text('${index+1}',style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 11, fontWeight: FontWeight.w500),),),
                        ),
                        selectedColor: Colors.white,
                        title: Row(
                          children: [
                            Image.network("https://deepai.org/static/images/cyberpunkdolphin.png",
                              height: 50, width: 50, fit: BoxFit.cover,),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Longtime' , style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                                Text('R&b, Dance', style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ))
                              ],
                            ),
                          ],
                        ),
                        trailing: const Text('30:00', style: TextStyle(color: Colors.grey, fontSize: 12),),
                        horizontalTitleGap: 10,
                      ),
                      const SizedBox(height: 8),
                      Container(color: Colors.white24, width: MediaQuery.of(context).size.width, height: 1),
                      const SizedBox(height: 8),
                    ],
                  );
                },
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Similar to Moonbeam',
                      style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black,
                              decorationThickness: 2,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey.shade200,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height *.1,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage('https://imgd.aeplcdn.com/1056x594/n/cw/ec/44686/activa-6g-right-front-three-quarter.jpeg'),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
    );
  }
}
