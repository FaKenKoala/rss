import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/web/audioplayers_web.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webfeed/domain/rss_feed.dart';

part 'feed_list_event.dart';
part 'feed_list_state.dart';
part 'feed_list_bloc.freezed.dart';

class FeedListBloc extends Bloc<FeedListEvent, FeedListState> {
  FeedListBloc() : super(_Initial()) {
    on<_GuardianRss>((event, emit) async {
      String data = await rootBundle.loadString('assets/files/guardian.xml');
      RssFeed feed = RssFeed.parse(data);
      emit.call(_GuardianRssState(feed));
    });
  }
}

class AudioPlayNotifier extends ChangeNotifier {
  AudioPlayNotifier() : _audioPlayer = AudioPlayer();
  final AudioPlayer _audioPlayer;

  
  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
  }
}
