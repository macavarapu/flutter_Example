 import 'package:flutter/material.dart';

class Textformfield extends StatefulWidget {
  const Textformfield({super.key});

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield> {
 
    TextEditingController _num1controller =  TextEditingController();
    TextEditingController _num2controller =  TextEditingController();
    String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Add Two Numbers"),
          backgroundColor: Colors.yellow,
        ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
             TextFormField(
             controller: _num1controller,
             keyboardType: TextInputType.number,
             
            decoration: InputDecoration(
              hintText: "add number",
             border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
             )
              ),
          ),
            SizedBox(height: 20,),
             TextFormField(
             controller: _num2controller,
             keyboardType: TextInputType.number,
             
            decoration: InputDecoration(
              hintText: "add number",
             border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
             )
              ),
          ),
            SizedBox(height: 30,),
               TextButton(
                child: Text("Add"),
                onPressed : () {
                  setState(() {
                    int sum = int.parse(_num1controller.text) + int.parse(_num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Result:",
                 style: TextStyle(
                  fontSize: 30,
               ),),
                 Text(result,
                 style: TextStyle(
                  fontSize: 30,
               ),),
    
                
            ],
          ),
          
          ],
        ),
      ),
      
    );
  }
}



