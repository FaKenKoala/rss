import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayNotifier extends ChangeNotifier {
  AudioPlayNotifier() : _audioPlayer = AudioPlayer() {
    _audioPlayer.playerStateStream.listen((state) {
      // if (!state.playing &&
      //     state.processingState == ProcessingState.completed) {
      //   notifyListeners();
      // }
      notifyListeners();
      print('状态: 正在播放=${state.playing}, 处理状态=${state.processingState}');
    });
  }
  final AudioPlayer _audioPlayer;
  String? _audioUrl;
  String? _guid;

  /// 正在播放：1. 加载中 2. 加载完毕，播放中
  Tuple2<String?, bool> get playInfo {
    if (_audioPlayer.playerState.playing) {
      if (_audioPlayer.processingState == ProcessingState.ready) {
        return tuple2(_guid, true);
      }
      return tuple2(_guid, false);
    }
    return tuple2(null, false);
  }

  play(String audioUrl, String guid) async {
    String? oldGuid = _guid;
    _guid = guid;
    _audioUrl = audioUrl;
    notifyListeners();
    if (_audioPlayer.playerState.playing) {
      /// 正在播放
      if (oldGuid == guid) {
        /// 暂停播放
        await _audioPlayer.pause();
      } else {
        _audioPlayer.setUrl(audioUrl);
        await _audioPlayer.play();
      }
    } else {
      if (oldGuid != guid) {
         _audioPlayer.setUrl(audioUrl);
      }
      await _audioPlayer.play();
    }
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
  }
}
