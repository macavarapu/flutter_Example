// import 'package:pod_player/pod_player.dart';
// import 'package:flutter/material.dart';

// class PlayVideoFromNetwork extends StatefulWidget {
//   const PlayVideoFromNetwork({Key? key}) : super(key: key);

//   @override
//   State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
// }

// class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
//   late final PodPlayerController controller;

//   @override
//   void initState() {
//          controller = PodPlayerController(
//            playVideoFrom: PlayVideoFrom.network(
//         'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
//       ),
//     // playVideoFrom: PlayVideoFrom.youtube('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4'),
//     podPlayerConfig: const PodPlayerConfig(
//       autoPlay: true,
//       isLooping: false,
//       videoQualityPriority: [720, 360,144]
//     )
//   )..initialise();
//     // controller = PodPlayerController(
//     //   playVideoFrom: PlayVideoFrom.network(
//     //     'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
//     //   ),
//     // )..initialise();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("video play screen"),
//         backgroundColor: Colors.amber,
//       ),
//       body: PodVideoPlayer(
//         controller: controller,
//        frameAspectRatio: 16/9,
//       videoAspectRatio: 16/9,
//       alwaysShowProgressBar: true,
      
     
//         ),
        
//     );
//   }
// }










// ///add quality model
// // import 'package:pod_player/pod_player.dart';
// // import 'package:flutter/material.dart';

// // class PlayVideoFromNetwork extends StatefulWidget {
// //   const PlayVideoFromNetwork({Key? key}) : super(key: key);

// //   @override
// //   State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
// // }

// // class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
// //   late PodPlayerController controller;
// //   late List<int> availableQualities;
// //   int selectedQuality = 720;
// //   final String videoUrl = 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4';

// //   @override
// //   void initState() {
// //     super.initState();
// //     availableQualities = [720, 360, 144];
// //     initializeController(selectedQuality);
// //   }

// //   void initializeController(int quality) {
// //     controller = PodPlayerController(
// //       playVideoFrom: PlayVideoFrom.network(videoUrl),
// //       podPlayerConfig: PodPlayerConfig(
// //         autoPlay: true,
// //         isLooping: false,
// //         videoQualityPriority: [quality],
// //       ),
// //     )..initialise();
// //   }

// //   @override
// //   void dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: true,
// //         title: Text("Video Play Screen"),
// //         backgroundColor: Colors.amber,
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: PodVideoPlayer(controller: controller),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text("Quality: "),
// //                 DropdownButton<int>(
// //                   value: selectedQuality,
// //                   items: availableQualities
// //                       .map((quality) => DropdownMenuItem(
// //                             value: quality,
// //                             child: Text("$quality p"),
// //                           ))
// //                       .toList(),
// //                   onChanged: (quality) {
// //                     setState(() {
// //                       selectedQuality = quality!;
// //                       controller.dispose();
// //                       initializeController(selectedQuality);
// //                     });
// //                   },
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }


// ////YouTube model screen

// // import 'package:flutter/material.dart';
// // import 'package:pod_player/pod_player.dart';

// // class PlayVideoFromNetwork extends StatefulWidget {
// //   const PlayVideoFromNetwork({Key? key}) : super(key: key);

// //   @override
// //   State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
// // }

// // class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
// //   late PodPlayerController controller;
// //   late List<int> availableQualities;
// //   int selectedQuality = 720;
// //   final String videoUrl = 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4';

// //   @override
// //   void initState() {
// //     super.initState();
// //     availableQualities = [720, 360, 144];
// //     initializeController(selectedQuality);
// //   }

// //   void initializeController(int quality) {
// //     controller = PodPlayerController(
// //       playVideoFrom: PlayVideoFrom.network(videoUrl),
// //       podPlayerConfig: PodPlayerConfig(
// //         autoPlay: true,
// //         isLooping: false,
// //         videoQualityPriority: [quality],
// //       ),
// //     )..initialise();
// //   }

// //   @override
// //   void dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }

// //   void openSettings() {
// //     showModalBottomSheet(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return Container(
// //           padding: EdgeInsets.all(16.0),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: <Widget>[
// //               ListTile(
// //                 leading: Icon(Icons.video_settings),
// //                 title: Text('Video Quality'),
// //                 trailing: DropdownButton<int>(
// //                   value: selectedQuality,
// //                   items: availableQualities
// //                       .map((quality) => DropdownMenuItem(
// //                             value: quality,
// //                             child: Text("$quality p"),
// //                           ))
// //                       .toList(),
// //                   onChanged: (quality) {
// //                     setState(() {
// //                       selectedQuality = quality!;
// //                       controller.dispose();
// //                       initializeController(selectedQuality);
// //                     });
// //                     Navigator.pop(context);
// //                   },
// //                 ),
// //               ),
// //               ListTile(
// //                 leading: Icon(Icons.loop),
// //                 title: Text('Loop Video'),
// //                 trailing: Switch(
// //                   value: controller.podPlayerConfig.isLooping,
// //                   onChanged: (bool value) {
// //                     setState(() {
// //                       controller = PodPlayerController(
// //                         playVideoFrom: PlayVideoFrom.network(videoUrl),
// //                         podPlayerConfig: PodPlayerConfig(
// //                           autoPlay: controller.podPlayerConfig.autoPlay,
// //                           isLooping: value,
// //                           videoQualityPriority: controller.podPlayerConfig.videoQualityPriority,
// //                         ),
// //                       )..initialise();
// //                     });
// //                     Navigator.pop(context);
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: true,
// //         title: Text("Video Play Screen"),
// //         backgroundColor: Colors.amber,
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.settings),
// //             onPressed: openSettings,
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: PodVideoPlayer(controller: controller),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

//

import 'package:pod_player/pod_player.dart';
import 'package:flutter/material.dart';

class PlayVideoFromNetwork extends StatefulWidget {
  const PlayVideoFromNetwork({Key? key}) : super(key: key);

  @override
  State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
}

class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
  late final PodPlayerController controller;
 

  @override
  void initState() {
    super.initState();
    controller = PodPlayerController(
      playVideoFrom:PlayVideoFrom.youtube('https://youtu.be/A3ltMaM6noM'),
      podPlayerConfig: const PodPlayerConfig(
        autoPlay: true,
        isLooping: false,
        // videoQualityPriority: [720, 360, 144],
      ),
    )..initialise();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void seekForward() {
    
     final newPosition = controller.currentVideoPosition + const Duration(seconds: 10);
    controller.videoSeekForward(newPosition);
  }

  void seekBackward() {
    final newPosition = controller.currentVideoPosition - const Duration(seconds: 10);
    controller.videoSeekBackward(newPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Video Play Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          PodVideoPlayer(
            controller: controller,
            frameAspectRatio: 16 / 9,
            videoAspectRatio: 16 / 9,
            alwaysShowProgressBar: false,
          ),
          Positioned(
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.replay_10, size: 48, color: Colors.white),
              onPressed: seekBackward,
            ),
          ),
          Positioned(
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.forward_10, size: 48, color: Colors.white),
              onPressed: seekForward,
            ),
          ),
        ],
      ),
    );
  }
}


