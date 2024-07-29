// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class Youtubeplayerscreen extends StatefulWidget {
//   const Youtubeplayerscreen({super.key});

//   @override
//   State<Youtubeplayerscreen> createState() => _YoutubeplayerscreenState();
// }

// class _YoutubeplayerscreenState extends State<Youtubeplayerscreen> {
//   String videoUrl="https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
//   YoutubePlayerController?  _controller;
//   @override
//   void initState() {
//     final videoId=YoutubePlayer.convertUrlToId(videoUrl);
//     _controller=YoutubePlayerController(
//       initialVideoId: videoId!,
//     flags: YoutubePlayerFlags(autoPlay: false),
//     );

  
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Youtubeplayerscreen"),
//         backgroundColor: Colors.amber,
//       ),
//       body: ListView(
//         children: [
//           YoutubePlayer(controller: _controller!)
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubeplayerscreen extends StatefulWidget {
  const Youtubeplayerscreen({super.key});

  @override
  State<Youtubeplayerscreen> createState() => _YoutubeplayerscreenState();
}

class _YoutubeplayerscreenState extends State<Youtubeplayerscreen> {
  // Replace with a valid YouTube video URL
  String videoUrl = "https://www.youtube.com/watch?v=v4rDjFdapQ8";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Youtube Player Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: YoutubePlayer(controller: _controller,
            progressColors: ProgressBarColors(backgroundColor: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
