import 'package:flutter/material.dart';
import 'package:youtube_project/view/home_screen/home_screen.dart';
import 'package:youtube_project/view/nav_screen/nav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: Navscreen(),
    );
  }
}
