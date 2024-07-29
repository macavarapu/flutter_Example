import 'package:flutter/material.dart';

class ContinerScreen extends StatelessWidget {
  const ContinerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 164, 42),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.person_2_sharp,
            size: 50,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(icon: Icon(Icons.search),
              onPressed: (){},
              ),
             
              ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(icon: Icon(Icons.more_vert),
              onPressed: (){},
              ),
              ),
        ],
        centerTitle: true,
        title: Text("Continer Screen"),
        backgroundColor: const Color.fromARGB(255, 142, 30, 233),
      ),
      body: Center(
        
        child: Container(
          height: 400,
          width: 450,
          alignment: Alignment.bottomLeft,
          transformAlignment: Alignment.bottomCenter,
          transform: Matrix4.rotationZ(0.8),
          color: const Color.fromARGB(255, 156, 7, 255),
          child: Center(
            child: Container(
              height: 300,
              width: 400,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              
              color: Colors.red,
              child: Center(
                child: Container(
                  height: 200,
                  width: 250,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                  ),
                  child: Center(
                      child: Text(
                    "Singam",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    
                  ),
                  
                  ),
                  
                  
                ),
                
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
