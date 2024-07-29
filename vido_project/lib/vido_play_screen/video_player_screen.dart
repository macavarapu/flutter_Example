import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';

class chiewplayerscreen extends StatefulWidget {
  const chiewplayerscreen({super.key});

  @override
  State<chiewplayerscreen> createState() => _chiewplayerscreenState();
}

class _chiewplayerscreenState extends State<chiewplayerscreen> {
  @override
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
   
    _videoPlayerController = VideoPlayerController.network(
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    );
    _chewieController=ChewieController(
      videoPlayerController: _videoPlayerController,
      allowMuting: true,
      looping: true,
      autoPlay: true,
      );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video player screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
        ),
        body: Center(
          child: Chewie(controller: _chewieController,)),
    );
  }
  
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }
}