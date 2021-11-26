import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:rss/application/audio_play/audio_play.dart';
import 'package:rss/application/bloc/feed_list/feed_list_bloc.dart';
import 'package:webfeed/domain/rss_enclosure.dart';
import 'package:webfeed/webfeed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  Row(
                    children: [
                      optionOf(feed.image?.url)
                          .map<Widget>((t) => CachedNetworkImage(
                              imageUrl: t, width: 100, height: 100))
                          .getOrElse(() => const SizedBox()),
                      Text('${feed.title}'),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        RssItem item = feed.items![index];
                        return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Card(
                                color: Colors.brown,
                                child: ListTile(
                                    contentPadding: const EdgeInsets.all(16.0),
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
                                            audio: item.enclosure!,
                                            guid: item.guid ??
                                                item.hashCode.toString(),
                                          )
                                        : const SizedBox())));
                      },
                      itemCount: feed.items?.length,
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

class PlayAudioWiget extends StatefulWidget {
  final RssEnclosure audio;
  final String guid;
  const PlayAudioWiget({Key? key, required this.audio, required this.guid})
      : super(key: key);

  @override
  _PlayAudioWigetState createState() => _PlayAudioWigetState();
}

class _PlayAudioWigetState extends State<PlayAudioWiget> {
  @override
  Widget build(BuildContext context) {
    final audioPlayNotifier = context.watch<AudioPlayNotifier>();
    final Tuple2<String?, bool> playInfo = audioPlayNotifier.playInfo;
    return IconButton(
        onPressed: () {
          audioPlayNotifier.play(widget.audio.url ?? '', widget.guid);
        },
        iconSize: 40,
        icon: playInfo.first == widget.guid && !playInfo.second
            ? const SizedBox.square(
                dimension: 30,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ))
            : Icon(
                playInfo.first == widget.guid
                    ? Icons.pause_circle_filled_outlined
                    : Icons.play_circle_fill_outlined,
                color: Colors.white,
              ));
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({ Key? key }) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ((){
        
      })(),
    );
  }
}