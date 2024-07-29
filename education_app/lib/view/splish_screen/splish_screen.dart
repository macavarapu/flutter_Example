import 'package:education_app/constants/image_constants.dart';
import 'package:flutter/material.dart';

class Splishscreen extends StatefulWidget {
  const Splishscreen({super.key});

  @override
  State<Splishscreen> createState() => _SplishscreenState();
}

class _SplishscreenState extends State<Splishscreen> {
  
  
  @override
    void initState() {
    super.initState();
   Future.delayed(Duration(seconds: 2), ()  async{
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    //   String? data =  preferences.getString("phonenumber")??"";
    //   if (data.isNotEmpty) {
    //    Navigator.pushNamed(context, "/bottom");
     
    //   } else {
       
    //     // Navigator.pushNamed(context, "/login");
      
    //   }
    });
  }
  
  Widget build(BuildContext context) {
      return Scaffold(
     backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
       child: Center(
        child: Image.asset(ImageConstants.logo,scale: 1.0,)
   
       ),
      ),
    );
  }
}