import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:popup_menu_2/triangle_painter.dart';

class Continerpopupscreen extends StatefulWidget {
  const Continerpopupscreen({super.key});

  @override
  State<Continerpopupscreen> createState() => _ContinerpopupscreenState();
}

class _ContinerpopupscreenState extends State<Continerpopupscreen> {
  
  bool shouldReclip(Continerpopupscreen oldClipper) => false;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        title: Text("Pop up screen"),
        backgroundColor: Colors.amber,
      ),
         body: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                  
          
           ClipPath(
            clipper: MessageClipper(borderRadius: 16),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                color: Colors.red,
              ),
              child: Center(child: Text("MessageClipper()")),
            ),
          ),

                 ],
               ))
               ,
         ),
     
    );
  }
  
}


