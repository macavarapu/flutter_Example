import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';


class VimeoVideoViewer extends StatefulWidget {
  const VimeoVideoViewer({super.key});

  @override
  State<VimeoVideoViewer> createState() => VimeoVideoViewerState();
}

class VimeoVideoViewerState extends State<VimeoVideoViewer> {
  late final PodPlayerController controller;
  bool isLoading = true;
  @override
  void initState() {
    loadVideo();
    super.initState();
  }

  void loadVideo() async {
    final urls = await PodPlayerController.getVimeoUrls('518228118');
    setState(() => isLoading = false);
  //     controller = PodPlayerController(
  //   playVideoFrom: PlayVideoFrom.youtube('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4'),
  //   podPlayerConfig: const PodPlayerConfig(
  //     autoPlay: true,
  //     isLooping: false,
  //     videoQualityPriority: [720, 360]
  //   )
  // )..initialise();
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.networkQualityUrls(videoUrls: urls!),
      podPlayerConfig: const PodPlayerConfig(
        videoQualityPriority: [144],
      ),
    )..initialise();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Center(child: PodVideoPlayer(controller: controller));
  }
}