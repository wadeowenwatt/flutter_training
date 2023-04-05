import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c4_assets_practice/c4_youtube_page.dart';
import 'package:video_player/video_player.dart';

class C4VideoPage extends StatefulWidget {
  const C4VideoPage({Key? key}) : super(key: key);

  @override
  State<C4VideoPage> createState() => _C4VideoPageState();
}

class _C4VideoPageState extends State<C4VideoPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildVideo(),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const C4YoutubePage(),
                  ),
                );
              },
              child: const Text("Video Youtube Screen"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideo() {
    return _controller.value.isInitialized
        ? Stack(
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                icon: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.black,
                ),
                iconSize: 50,
              )
            ],
          )
        : Container();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
