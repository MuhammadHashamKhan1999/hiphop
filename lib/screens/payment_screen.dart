import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiphop/utils/dimensions.dart';
import '../utils/colors_constant.dart';
import 'homepage_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  int _selectedIndex = -1, _cardsIndex = 0;
  List<String> _paymentOptions = ["Card", "PayPal", "ApplePay"], _imgList = ["j","k","l"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
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
          'Payment',
          style: TextStyle(
            color: AppColors.textWhiteColor,
            fontFamily: 'Poppins',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _paymentOptions.map((e){
                    int index = _paymentOptions.indexOf(e);
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.paymentCardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: _selectedIndex == index ? Colors.red : AppColors.paymentCardBorderColor, width: 2),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              e,
                              style: TextStyle(
                                fontSize: 15,
                                color: _selectedIndex == index  ? Colors.red : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                }).toList(),
              ),
            const SizedBox(height: 20),
            Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.8,
                    onPageChanged: (index, reason) => setState(() {
                      _cardsIndex = index;
                    }),
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    autoPlay: false,
                  ),
                  items: _imageSliders(),
                )),
            const SizedBox(height: 30),
            Text(
              'DETAILS',
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
                  'Card Holder',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Kellie Liyad',
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
                  'Card Number',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '1234-5678-9012-3456',
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
                  'Exp. Date',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '04/25',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.buttonBackgroundColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.white60,
              thickness: .3,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CVV',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '156',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.buttonBackgroundColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero
              ),
              child: SizedBox(
                width: double.infinity,
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
                  child: Text("Pay With Card", style: TextStyle(color: AppColors.textWhiteColor)),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  List<Widget> _imageSliders () {
    return _imgList.map((item) {
      return Container(
        margin: const EdgeInsets.all(5.0),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: _cardsIndex == _imgList.indexOf(item) ? AppColors.creditDebitCardBgColorSelected : AppColors.creditDebitCardBgColorUnSelected,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.sim_card_outlined),
                Spacer(),
                Text(
                  '1234 5678 9012 3456',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Kellie Liyad',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '02/24',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }).toList();
  }

}
