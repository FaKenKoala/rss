part of 'feed_list_bloc.dart';

@freezed
class FeedListState with _$FeedListState {
  const factory FeedListState.initial() = _Initial;
  const factory FeedListState.guardianRss(RssFeed rssFeed) = _GuardianRssState;
}
