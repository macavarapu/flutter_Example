
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarscreen extends StatefulWidget {
  const BottomNavigationBarscreen({super.key});

  @override
  State<BottomNavigationBarscreen> createState() => _BottomNavigationBarscreenState();
}

class _BottomNavigationBarscreenState extends State<BottomNavigationBarscreen> {
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.blue, labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Search", Colors.orange, labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.layers, "Reports", Colors.red, circleStrokeColor: Colors.black),
    TabItem(Icons.notifications, "Notifications", Colors.cyan),
  ]);
  @override
  Widget build(BuildContext context) {
    return CircularBottomNavigation(
      tabItems,
      selectedCallback: (selectedPos) {
        print("clicked on $selectedPos");
      },
    );
  }
}
   