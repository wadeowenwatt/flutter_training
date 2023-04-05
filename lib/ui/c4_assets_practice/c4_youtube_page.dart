import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class C4YoutubePage extends StatefulWidget {
  const C4YoutubePage({Key? key}) : super(key: key);

  @override
  State<C4YoutubePage> createState() => _C4YoutubePageState();
}

class _C4YoutubePageState extends State<C4YoutubePage> {
  late YoutubePlayerController _controller;
  late String videoId;

  @override
  void initState() {
    videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=YBRkVCRP1Gw")!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black,
      ),
      body: _buildYoutubeVideo(),
    );
  }

  Widget _buildYoutubeVideo() {
    return Center(
      child: YoutubePlayer(
        controller: _controller,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
        ],
      ),
    );
  }
}
