import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../api_call_screen/simple_model.dart';

class SimpleApiscreen extends StatefulWidget {
  const SimpleApiscreen({super.key});

  @override
  State<SimpleApiscreen> createState() => _SimpleApiscreenState();
}

class _SimpleApiscreenState extends State<SimpleApiscreen> {
  List<simplemodel>Simplemodel=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("simple Api screen"),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          
          if( snapshot.hasData){
            return  ListView.builder(
          itemCount: Simplemodel.length,
          itemBuilder: (context, index) {
            return Container(
                height: 300,
                color: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "User Id: ${Simplemodel[index].userId}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Id: ${Simplemodel[index].id}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Title: ${Simplemodel[index].title}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                         
                        ],
                      ),
            );
            
          }
        );
          }else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
        
      ),
    );
  }

Future<List<simplemodel >>getData()async{
  final response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
  var data =jsonDecode(response.body.toString());
  if(response.statusCode==200){
    for(Map<String ,dynamic>index in data){
      Simplemodel.add(simplemodel.fromJson(index));
    }
    return Simplemodel;
  }else{
    return Simplemodel;
  }
  
}
}