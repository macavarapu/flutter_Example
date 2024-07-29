import 'package:flutter/material.dart';

class Cardscreen extends StatefulWidget {
  const Cardscreen({super.key});

  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<Cardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SizedBox(
        height: 150,
        child: Card(
          color: Colors.blue,
          child: Row(
          
              children: [
                Icon(Icons.mobile_friendly_outlined,size: 50,),
                Row(
                 
                  children: [
                     Row(
                  children: [
                    Text("***",style: TextStyle(fontSize: 20,color: Colors.yellow),),
                    //Icon(Icons.star,color: Colors.yellow,size: 20,),
                    Text("5",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],
                ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    
                    children: [
                      Text("sss"),
                    ],
                  ),
                ],
              )
                  ],
                ),
              
        
              ],
              
            
              
            ),
        ),
      ),
        
     
    );
  }
}