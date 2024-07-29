import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Icon(
              Icons.timer,
              size: 80,
              color: Colors.red,
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
