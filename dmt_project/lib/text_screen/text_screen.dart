import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textscreen extends StatelessWidget {
  const Textscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(98, 255, 255, 0),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
           Column(
             children: [
               Row(
                 children: [
                  Icon(Icons.phone_android,size: 100,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: const Center(
                      
                          child: Text(
                        "Work",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                   ),
                 ],
               ),
             ],
           ),
            Text(
              "everyday",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,color: Colors.white,
                fontWeight: FontWeight.bold
                 ),
              //style: GoogleFonts.eater(),
            ),
            Text("TO  REACH",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              ),),
               Text(
              "your",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                 ),
              //style: GoogleFonts.eater(),
            ),
             Text("GOAL",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 40,),
              TextButton(
                onPressed: () {},
               style: TextButton.styleFrom(
               primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 9, 38, 134), // Background Color
               ),
                child: const Text(
                'Text Button ',
                 style: TextStyle(fontSize: 24),
                 ),
                )
          ],
        ),
      ),
    );
  }
}
