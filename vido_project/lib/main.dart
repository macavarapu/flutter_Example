// import 'package:flutter/material.dart';
// import 'package:vido_project/vido_play_screen/pod_player.dart';



// void main() async{
  
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     WidgetsFlutterBinding.ensureInitialized();
    
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: PlayVideoFromNetwork(),  // VimeoVideoViewer() ,  //PlayVideoFromNetwork() , // VideoPlayerScreen() ,   //  Youtubeplayerscreen() ,   //const Vidoplay() ,  //VideoPlayerScreen(videoUrl: 'https://example.com/default_video.mp4'),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:vido_project/app_update_screen/app_update_screen.dart';
import 'package:vido_project/coupon_uikit_screen/coupon_code_scren.dart';



void main()async {
  runApp(MyApp());
 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AppUpdateScreen() ,     //CouponCodeScreen() ,     // PlayVideoFromNetwork() ,  //chiewplayerscreen(),    //VideoPlayerScreen () ,   //SamplePlayer() ,  // chiewplayerscreen() ,    //PlayVideoFromNetwork(),
    );
  }
}

