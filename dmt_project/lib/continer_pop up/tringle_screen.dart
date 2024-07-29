import 'package:flutter/material.dart';


class TriangleClippe extends StatefulWidget {
  const TriangleClippe({super.key});

  @override
  State<TriangleClippe> createState() => _TriangleClipperscreenState();
}

class _TriangleClipperscreenState extends State<TriangleClippe> {
    Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

    bool shouldReclip(TriangleClippe oldClipper) => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text("test"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text("Download"),
            ),
          ),
          ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              color: Colors.red,
              height: 10,
              width: 20,
            ),
          )
        ],
      )),
    );
  }

  TriangleClipper() {}
}