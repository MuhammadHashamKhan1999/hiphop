import 'dart:async';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiphop/screens/homepage_screen.dart';
import 'package:hiphop/utils/audio_player_manager.dart';
import 'package:hiphop/utils/dimensions.dart';
import '../utils/colors_constant.dart';
import '../widgets/bottom_bar_navigation.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> with SingleTickerProviderStateMixin  {

  AnimationController? _controller;

  final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
  List<String> _audioFiles = ['music/audio1.mp3', 'music/audio2.mp3', 'music/audio3.mp3',];

  double _currentSeek = 0.0;
  int _currentIndex = 0, _currentLineIndex = 0;
  bool _isShowLyrics = false;

  IconData _playPauseIcon = Icons.play_arrow;

  final List<String> _lyrics = [
    "Verse 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Chorus: Duis aute irure dolor in reprehenderit in voluptate velit.",
    "Bridge: Excepteur sint occaecat cupidatat non proident.",
    "Verse 2: Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    "Chorus: Duis aute irure dolor in reprehenderit in voluptate velit.",
    "Outro: Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Replace with your desired status bar color
    ));

    return Scaffold(
      body: Stack(
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
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 20.0, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.buttonBackgroundColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => BottomBarNavigation(),
                              ),
                              );
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: AppColors.textWhiteColor,
                            ),
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
                      InkWell(
                        onTap: () {
                          _isShowLyrics = !_isShowLyrics;
                        },
                        child: Text(
                          !_isShowLyrics ? 'Lyrics' : "Player",
                          style: const TextStyle(
                              color: AppColors.buttonBackgroundColor,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.9,
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimension.height20,),
                !_isShowLyrics ? Column(
                  children: [
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
                        fontWeight: FontWeight.w600,
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              _lyrics[index],
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: _currentLineIndex == index ? 24.0 : 16.0, color: _currentLineIndex == index ? Colors.white : Colors.white54), // Larger font for current line
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ) : Column(
                  children: [
                    const Text(
                      'Drawing Room',
                      style: TextStyle(
                        color: AppColors.textWhiteColor,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .4,
                      child: ListView.builder(
                        itemCount: _lyrics.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              _lyrics[index],
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: _currentLineIndex == index ? 24.0 : 16.0, color: _currentLineIndex == index ? Colors.white : Colors.white54), // Larger font for current line
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.heart_broken,
                            size: 25.0, // A
                            color: Colors.white,
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            "like",
                            style: TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 25.0, // A
                            color: Colors.white,
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            "Add to Playlist",
                            style: TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.volume_down,
                            size: 25.0, // A
                            color: Colors.white,
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            "Volume",
                            style: TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.comment,
                            size: 25.0, // A
                            color: Colors.white,
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            "Comments",
                            style: TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _formatDuration(_audioPlayerManager.position),
                        style: const TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                      StreamBuilder<double>(
                        stream: _audioPlayerManager.progressStream,
                        initialData: 0.0,
                        builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
                          final progress = snapshot.data;
                          _currentSeek = progress != null ? progress * 100.0 : 0;
                          return Expanded(
                            child: Slider(
                              min: 0.0,
                              max: 100.0,
                              activeColor: AppColors.buttonBackgroundColor,
                              value: _currentSeek,
                              onChanged: (value) {
                                setState(() {
                                  _currentSeek = value;
                                });
                              },
                              onChangeEnd: (value) {
                                final seekValue = (value / 100) * _audioPlayerManager.duration.inMilliseconds;
                                _audioPlayerManager.seek(Duration(milliseconds: seekValue.toInt()));
                              },
                            ),
                          );
                        },
                      ),
                      Text(
                        _formatDuration(_audioPlayerManager.duration),
                        style: const TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            child: const Icon(
                                CupertinoIcons.play_circle_fill,
                              size: 16,
                              color: AppColors.textWhiteColor,

                            ),
                          ),
                        )
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: InkWell(
                          onTap: () => _previousAudio(),
                          child: Container(
                            child: const Icon(
                                CupertinoIcons.backward_fill,
                              size: 16,
                              color: AppColors.textWhiteColor,

                            ),
                          ),
                        )
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                          width: 60,
                          height: 60,
                          child: InkWell(
                            onTap: () {
                              if (_playPauseIcon == Icons.play_arrow) {
                                _playAudio(_audioFiles[_currentIndex]);
                              } else {
                                _pauseAudio();
                              }
                            },
                            child: Icon(
                              _playPauseIcon,
                              size: 60,
                              weight: 20,
                              color: AppColors.textWhiteColor,
                            ),
                          )
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                          width: 35,
                          height: 35,
                          child: InkWell(
                            onTap: () => _nextAudio(),
                            child: const Icon(
                              CupertinoIcons.forward_fill,
                              size: 16,
                              color: AppColors.textWhiteColor,

                            ),
                          )
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                          width: 35,
                          height: 35,
                          child: InkWell(
                            onTap: () {

                            },
                            child: const Icon(
                              CupertinoIcons.shuffle,
                              size: 16,
                              color: AppColors.textWhiteColor,

                            ),
                          )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ],
      )
    );
  }

  @override
  void dispose() {
    _audioPlayerManager.dispose();
    _controller!.dispose();
    super.dispose();
  }

  // private methods
  Future<void> _playAudio(String audioPath) async {
    await _audioPlayerManager.play(_audioFiles[_currentIndex]);
    setState(() {
      _playPauseIcon = Icons.pause;
    });
  }

  Future<void> _pauseAudio() async {
    await _audioPlayerManager.pause();
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

  // calculate duration
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

}