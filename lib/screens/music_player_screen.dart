import 'package:audioplayers/audioplayers.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiphop/screens/payment_screen.dart';
import 'package:hiphop/utils/dimensions.dart';
import '../utils/colors_constant.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> with SingleTickerProviderStateMixin  {

  AnimationController? _controller;

  AudioPlayer _audioPlayer = AudioPlayer();
  List<String> _audioFiles = [
    'music/audio1.mp3',
    'music/audio2.mp3',
    'music/audio3.mp3',
  ];
  int _currentIndex = 0;

  IconData _playPauseIcon = Icons.play_arrow;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,

      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/homepagebg.png"),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 20.0, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.buttonBackgroundColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Icon(
                            FluentIcons.resize_small_24_filled,
                            color: AppColors.textWhiteColor,
                          ),
                        ),
                      ),
                      const Text(
                        'Player',
                        style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontFamily: 'Poppins',
                          letterSpacing: 0.9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        'Lyrics',
                        style: TextStyle(
                            color: AppColors.buttonBackgroundColor,
                            fontFamily: 'Poppins',
                            letterSpacing: 0.9,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimension.height20,),
                // Container(
                //   width: double.maxFinite,
                //   height: 250,
                //   decoration: const BoxDecoration(
                //       color: Colors.transparent
                //   ),
                // ),
                AnimatedBuilder(
                  animation: _controller!,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _controller!.value * 2.0 * 3.14159,
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage('https://i.ytimg.com/vi/pCh3Kp6qxo8/maxresdefault.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                const Text(
                  'Drawing Room',
                  style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
                const Text(
                  'Thievery Corporation',
                  style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.1,
                  ),
                ),
                SizedBox(height: 80,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          onTap: () => _previousAudio(),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: AppColors.greyColor
                            ),
                            child: const Icon(
                                CupertinoIcons.backward_end,
                              size: 16,
                              color: AppColors.textWhiteColor,

                            ),
                          ),
                        ),
                      )
                    ),
                    const SizedBox(width: 40,),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () {
                              if (_playPauseIcon == Icons.play_arrow) {
                                _playAudio(_audioFiles[_currentIndex]);
                              } else {
                                _pauseAudio();
                              }
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: AppColors.buttonBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red,
                                    offset: Offset(0, 2),
                                    spreadRadius: 10,
                                    blurRadius: 20
                                  )
                                ]
                              ),
                              child: Icon(
                                _playPauseIcon,
                                size: 28,
                                weight: 20,
                                color: AppColors.textWhiteColor,

                              ),
                            ),
                          ),
                        )
                    ),
                    const SizedBox(width: 40,),
                    SizedBox(
                        width: 35,
                        height: 35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () => _nextAudio(),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: AppColors.greyColor
                              ),
                              child: const Icon(
                                CupertinoIcons.forward_end,
                                size: 16,
                                color: AppColors.textWhiteColor,

                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.zero
                  ),
                  child: SizedBox(
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PaymentScreen()));

                      },
                      child: Text("Buy Now", style: TextStyle(color: AppColors.textWhiteColor)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  // private methods
  Future<void> _playAudio(String audioPath) async {
    await _audioPlayer.play(AssetSource(_audioFiles[_currentIndex]));
    // await _audioPlayer.play(UrlSource(_audioFiles[_currentIndex]));  // to play from url
    setState(() {
      _playPauseIcon = Icons.pause;
    });
  }

  Future<void> _pauseAudio() async {
    await _audioPlayer.pause();
    setState(() {
      _playPauseIcon = Icons.play_arrow;
    });
  }

  void _nextAudio() {
    if (_currentIndex < _audioFiles.length - 1) {
      _currentIndex++;
      _playAudio(_audioFiles[_currentIndex]);
    }
  }

  void _previousAudio() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _playAudio(_audioFiles[_currentIndex]);
    }
  }


}

