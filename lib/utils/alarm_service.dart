import 'package:audioplayers/audioplayers.dart';

class AlarmService {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playAlarm() async {
    try {
      await _audioPlayer.play(AssetSource('alarm.mp3'));  // Mainkan bunyi alarm
    } catch (e) {
      print("Error playing alarm: $e");
    }
  }

  Future<void> stopAlarm() async {
    try {
      await _audioPlayer.stop();  // Hentikan bunyi alarm
    } catch (e) {
      print("Error stopping alarm: $e");
    }
  }
}
