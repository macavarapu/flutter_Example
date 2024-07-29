// import 'package:flutter/material.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController: VideoPlayerController.network(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with your video URL
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Video Player'),
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//         child: FlickVideoPlayer(
//           flickManager: flickManager,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:video_player/video_player.dart';

// class SamplePlayer extends StatefulWidget {
//   SamplePlayer({ key}) : super(key: key);

//   @override
//   _SamplePlayerState createState() => _SamplePlayerState();
// }

// class _SamplePlayerState extends State<SamplePlayer> {
//   late FlickManager flickManager;
//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController:
//           VideoPlayerController.networkUrl(Uri.parse("url"),
//     ),
//     );
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: FlickVideoPlayer(
//         flickManager: flickManager
//       ),
//     );
//   }
// }



// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late VideoPlayerController _controller;
  

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.file(File('path/to/video.mp4'));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: VideoPlayer(_controller),
//         ),
//       ),
//       controlsOverlay: _ControlsOverlay(controller: _controller),
//     );
//   }
// }

// class _ControlsOverlay extends StatelessWidget {
//   final VideoPlayerController controller;

//   const _ControlsOverlay({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           bottom: 0,
//           left: 0,
//           right: 0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 icon: Icon(Icons.fast_rewind),
//                 onPressed: () {
//                   controller.seekTo(Duration(seconds: -10));
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.play_arrow),
//                 onPressed: () {
//                   controller.play();
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.pause),
//                 onPressed: () {
//                   controller.pause();
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.fast_forward),
//                 onPressed: () {
//                   controller.seek(Duration(seconds: 10));
//                 },
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File('path/to/video.mp4'));
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(_controller),
                    _ControlsOverlay(controller: _controller),
                  ],
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  final VideoPlayerController controller;

  const _ControlsOverlay({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.forward_10),
                onPressed: () {
                  final newPosition = controller.value.position - Duration(seconds: 10);
                  controller.seekTo(newPosition < Duration.zero ? Duration.zero : newPosition);
                },
              ),
              IconButton(
                icon: Icon(controller.value.isPlaying ? Icons.pause : Icons.forward_10),
                onPressed: () {
                  controller.value.isPlaying ? controller.pause() : controller.play();
                },
              ),
              IconButton(
                icon: Icon(Icons.forward_10),
                onPressed: () {
                  final newPosition = controller.value.position + Duration(seconds: 10);
                  controller.seekTo(newPosition > controller.value.duration ? controller.value.duration : newPosition);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
