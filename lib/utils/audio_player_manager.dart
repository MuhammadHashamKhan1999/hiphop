import 'package:audioplayers/audioplayers.dart';

class AudioPlayerManager {
  final AudioPlayer _audioPlayer = AudioPlayer();
  double _progress = 0.0;
  Duration _duration = Duration();
  Duration _position = Duration();

  Stream<double> get progressStream => _audioPlayer.onPositionChanged.map((event) {
    _progress = event.inMilliseconds / _duration.inMilliseconds;
    _position = event;
    return _progress;
  });

  Duration get duration => _duration;
  Duration get position => _position;

  Future<void> play(String filePath) async {
    await _audioPlayer.play(AssetSource(filePath));
    // await _audioPlayer.play(UrlSource(_audioFiles[_currentIndex]));
     _duration = (await _audioPlayer.getDuration())!;
  }

  Future<void> pause() async {
    await _audioPlayer.pause();
  }

  Future<void> resume() async {
    await _audioPlayer.resume();
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  void dispose() {
    stop();
    _audioPlayer.dispose();
  }
}