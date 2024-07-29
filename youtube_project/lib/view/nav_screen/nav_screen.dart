

import 'package:flutter/material.dart';
import 'package:youtube_project/view/home_screen/home_screen.dart';

class Navscreen extends StatefulWidget {
  const Navscreen({super.key});

  @override
  State<Navscreen> createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  int _selectedindex=0;
  final _screens=[
    Homescreen(),
    const Scaffold(body: Center(child: Text("Explore"),),),
    const Scaffold(body: Center(child: Text("Add"),),),
    const Scaffold(body: Center(child: Text("Subscriptions"),),),
    const Scaffold(body: Center(child: Text("Library"),),),
           
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // body: _screens[_selectedindex],
     body: Stack(
      children: _screens.asMap().
      map((i,Screen) => MapEntry(
        i,Offstage(
          offstage: _selectedindex!=i,
      child: Screen,
     ))).values.toList(),
     ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedindex,
          onTap: (i)=>setState(()=>_selectedindex=i ),
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
              ),
                BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(Icons.explore),
              label: "Explore",
              ),
                BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              activeIcon: Icon(Icons.add_circle),
              label: "Add",
              ),
                 BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              activeIcon: Icon(Icons.subscriptions),
              label: "Subscriptions",
              ),
                BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              activeIcon: Icon(Icons.video_library),
              label: "Library",
              ),
          ],
      ),
      
    );
  }
}