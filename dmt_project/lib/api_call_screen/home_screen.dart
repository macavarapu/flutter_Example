import 'package:flutter/material.dart';

import 'get_api_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Get Api screen"),
        backgroundColor: Colors.amber,
      ),
      body:GetApiscreen() ,
   );
  }
}