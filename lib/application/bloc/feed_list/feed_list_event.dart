part of 'feed_list_bloc.dart';

@freezed
class FeedListEvent with _$FeedListEvent {
  const factory FeedListEvent.started() = _Started;
  const factory FeedListEvent.guardianRss() = _GuardianRss;
}
