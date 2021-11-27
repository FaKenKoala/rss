import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:rss/application/audio_play/audio_play.dart';
import 'package:rss/application/bloc/feed_list/feed_list_bloc.dart';
import 'package:rss/infrastructure/util.dart';
import 'package:webfeed/webfeed.dart';

class RssListPage extends StatelessWidget {
  const RssListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeedListBloc()..add(const FeedListEvent.guardianRss()),
        ),
        ChangeNotifierProvider(create: (_) => AudioPlayNotifier()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Guardian'),
        ),
        body: BlocBuilder<FeedListBloc, FeedListState>(
          builder: (context, state) {
            return optionOf(state.whenOrNull(guardianRss: id))
                .map<Widget>((feed) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        RssItem item = feed.items![index];
                        print('url $index: ${item.enclosure?.url}');
                        return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Card(
                                color: Colors.brown,
                                child: Column(
                                  children: [
                                    ListTile(
                                        contentPadding:
                                            const EdgeInsets.all(16.0),
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item.title ?? '',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              optionOf(item.pubDate)
                                                  .map(DateFormat(
                                                          "yyyy-MM-dd HH:mm:ss")
                                                      .format)
                                                  .getOrElse(() => ''),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        trailing: item.enclosure != null
                                            ? PlayAudioWiget(
                                                audioUrl: item.enclosure!.url,
                                                guid: item.guid ??
                                                    item.hashCode.toString(),
                                              )
                                            : const SizedBox()),
                                  ],
                                )));
                      },
                      itemCount: feed.items?.length,
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.brown[100],
                      height: 100,
                      child: Row(
                        children: [
                          optionOf(feed.image?.url).map<Widget>((t) {
                            return Stack(
                              children: [
                                const Icon(
                                  Icons.image,
                                  size: 100,
                                ),
                                CachedNetworkImage(
                                  imageUrl: t,
                                  width: 100,
                                  height: 100,
                                  progressIndicatorBuilder:
                                      (context, url, progress) =>
                                          const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Center(
                                        child: CircularProgressIndicator()),
                                  ),
                                ),
                              ],
                            );
                          }).getOrElse(() => const SizedBox()),
                          Expanded(child: Builder(builder: (context) {
                            final notifier = context.watch<AudioPlayNotifier>();
                            final Tuple2<String?, bool> playInfo =
                                notifier.playInfo;
                            final duration = notifier.duration;
                            if (notifier.guid == null) {
                              return const SizedBox();
                            }
                            return Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          notifier.toggleVolume();
                                        },
                                        color: Colors.white,
                                        iconSize: 40,
                                        icon: notifier.volume == 0
                                            ? const Icon(Icons.volume_off)
                                            : const Icon(Icons.volume_up),
                                      ),
                                      SliderTheme(
                                        data: SliderThemeData(
                                          activeTrackColor: Colors.white,
                                          inactiveTrackColor: Colors.brown[300],
                                          thumbColor: Colors.white,
                                          valueIndicatorColor:
                                              Colors.brown[300],
                                          valueIndicatorTextStyle: TextStyle(
                                            backgroundColor: Colors.brown[300],
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Slider(
                                            value: notifier.volume,
                                            divisions: 100,
                                            label:
                                                '${(notifier.volume * 100).toInt()}',
                                            onChanged: (volumn) {
                                              notifier.setVolume(volumn);
                                            }),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            notifier.replay10Second();
                                          },
                                          iconSize: 40,
                                          icon: const Icon(
                                            Icons.replay_10,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            notifier.forward10Seconds();
                                          },
                                          iconSize: 40,
                                          icon: const Icon(
                                            Icons.forward_10,
                                            color: Colors.white,
                                          )),
                                      SizedBox(
                                        width: 150,
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 4.0),
                                            child: Text(
                                                '${TimeUtils.intTime(duration.first)} / ${TimeUtils.intTime(duration.second)}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            notifier.play(
                                                notifier.audioUrl ?? '',
                                                notifier.guid!);
                                          },
                                          iconSize: 40,
                                          icon: optionOf(playInfo.first)
                                              .map<Widget>((_) => option(
                                                      _, (__) => playInfo.second)
                                                  .map<Widget>((t) =>
                                                      const Icon(Icons.pause_circle_filled_outlined,
                                                          color: Colors.white))
                                                  .getOrElse(() => const SizedBox.square(
                                                      dimension: 30,
                                                      child: CircularProgressIndicator(color: Colors.white))))
                                              .getOrElse(() => const Icon(Icons.play_circle_fill_outlined, color: Colors.white))),
                                      const SizedBox(width: 16),
                                      PopupMenuButton(
                                          child: Container(
                                            padding: const EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                            child: Text(
                                                '${notifier.speed.toStringAsFixed(2)}x',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14)),
                                          ),
                                          itemBuilder: (context) {
                                            Iterable<double> speedList() sync* {
                                              double speed = 0;
                                              while (true) {
                                                yield speed += 0.25;
                                              }
                                            }

                                            return speedList()
                                                .take(8)
                                                .map((e) =>
                                                    PopupMenuItem<double>(
                                                        onTap: () {
                                                          notifier.setSpeed(e);
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Opacity(
                                                                opacity:
                                                                    notifier.speed ==
                                                                            e
                                                                        ? 1
                                                                        : 0,
                                                                child:
                                                                    const Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              8.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .check_sharp,
                                                                  ),
                                                                )),
                                                            Text('$e'),
                                                          ],
                                                        ),
                                                        value: e))
                                                .toList();
                                          }),
                                      const SizedBox(
                                        width: 16,
                                      )
                                    ],
                                  ),
                                ),
                                LinearProgressIndicator(
                                    backgroundColor: Colors.brown[300],
                                    color: Colors.white,
                                    minHeight: 10,
                                    value: (duration.second ?? 0) == 0
                                        ? 0
                                        : duration.first! / duration.second!),
                              ],
                            );
                          })),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }).getOrElse(() => const EmptyContentWidget());
          },
        ),
      ),
    );
  }
}

class EmptyContentWidget extends StatelessWidget {
  const EmptyContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PlayAudioWiget extends StatelessWidget {
  final String? audioUrl;
  final String? guid;
  const PlayAudioWiget({Key? key, required this.audioUrl, required this.guid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final audioPlayNotifier = context.watch<AudioPlayNotifier>();
    final Tuple2<String?, bool> playInfo = audioPlayNotifier.playInfo;
    return optionOf(guid)
        .map<Widget>((t) => IconButton(
            onPressed: () {
              audioPlayNotifier.play(audioUrl ?? '', t);
            },
            iconSize: 40,
            icon: playInfo.first == guid && !playInfo.second
                ? const SizedBox.square(
                    dimension: 30,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : Icon(
                    playInfo.first == guid
                        ? Icons.pause_circle_filled_outlined
                        : Icons.play_circle_fill_outlined,
                    color: Colors.white,
                  )))
        .getOrElse(() => const SizedBox());
  }
}
