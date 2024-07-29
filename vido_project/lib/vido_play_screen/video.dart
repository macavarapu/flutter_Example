
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class Vidoplay extends StatelessWidget {
  const Vidoplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Video playscreen"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PlayerWidget(),
          ],
        ),
      ),
    );
  }
}

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  bool isVideoInitialized = false;
  double _aspectRatio = 16 / 8;
  @override
  void initState() {
    
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );

    videoPlayerController.initialize().then((_) {
      setState(() {
        isVideoInitialized = true;
        chewieController = ChewieController(
          videoPlayerController: videoPlayerController,
          autoPlay: true,
          looping: true,
          aspectRatio:  _aspectRatio,
          fullScreenByDefault: false,
          allowFullScreen: true,
          allowMuting: true,
          autoInitialize: true,
          deviceOrientationsAfterFullScreen: [
            DeviceOrientation.portraitUp,
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ],
          showControlsOnInitialize: true,
          allowPlaybackSpeedChanging: false,
        );
      });
    });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  void enterFullScreen() {
    setState(() {
      chewieController?.enterFullScreen();
    });
  }

  void exitFullScreen() {
    if (chewieController != null && chewieController!.isFullScreen) {
      chewieController?.exitFullScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isVideoInitialized) {
      return Column(
        children: [
          AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: Chewie(controller: chewieController!),
          ),
          ElevatedButton(
            onPressed: enterFullScreen,
            child: const Text("Enter Full Screen"),
          ),
        ],
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}

