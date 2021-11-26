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

