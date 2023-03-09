import 'package:audioplayers/audioplayers.dart';
import 'package:honalondon_radio/consts/const.dart';

class PlaybackState {
  final bool isPlaying;
  final AudioPlayer audioPlayer;
  final double volume;

  PlaybackState(
      {required this.isPlaying,
      required this.audioPlayer,
      required this.volume});
}

class RadioProvider extends ChangeNotifier {
  PlaybackState _state =
      PlaybackState(isPlaying: false, audioPlayer: AudioPlayer(), volume: 1.0);

  PlaybackState get state => _state;

  Future<void> toggleAudio(String url) async {
    if (_state.isPlaying) {
      await _state.audioPlayer.pause();
      _state = PlaybackState(
          isPlaying: false,
          audioPlayer: _state.audioPlayer,
          volume: _state.volume);
    } else {
      await _state.audioPlayer.play(UrlSource(url), volume: _state.volume);
      _state = PlaybackState(
          isPlaying: true,
          audioPlayer: _state.audioPlayer,
          volume: _state.volume);
    }
    notifyListeners();
  }

  void setVolume(double volume) {
    _state.audioPlayer.setVolume(volume);
    _state = PlaybackState(
        isPlaying: _state.isPlaying,
        audioPlayer: _state.audioPlayer,
        volume: volume);
    notifyListeners();
  }

  @override
  void dispose() {
    _state.audioPlayer.dispose();
    super.dispose();
  }
}
















// class PlaybackState {
//   final bool isPlaying;
//   final AudioPlayer audioPlayer;

//   PlaybackState({required this.isPlaying, required this.audioPlayer});
// }

// class RadioProvider extends ChangeNotifier {
//   PlaybackState _state =
//       PlaybackState(isPlaying: false, audioPlayer: AudioPlayer());

//   PlaybackState get state => _state;

//   Future<void> toggleAudio(String url) async {
//     if (_state.isPlaying) {
//       await _state.audioPlayer.pause();
//       _state = PlaybackState(isPlaying: false, audioPlayer: _state.audioPlayer);
//     } else {
//       await _state.audioPlayer.play(UrlSource(url));
//       _state = PlaybackState(isPlaying: true, audioPlayer: _state.audioPlayer);
//     }
//     notifyListeners();
//   }

//   @override
//   void dispose() {
//     _state.audioPlayer.dispose();
//     super.dispose();
//   }
// }
