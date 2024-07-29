import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import 'package:dmt_project/api_call_screen/simple_model.dart';
import 'package:flutter/material.dart';


class GetApiscreen extends StatefulWidget {
  const GetApiscreen({super.key});

  @override
  State<GetApiscreen> createState() => _GetApiscreenState();
}

class _GetApiscreenState extends State<GetApiscreen> {
  
  List<simplemodel> Simplemodel = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshort) {
          if (snapshort.hasData) {
            return ListView.builder(
                itemCount: Simplemodel.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 130,
                    color: Colors.greenAccent,
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
                          "Titler: ${Simplemodel[index].title}",
                          maxLines: 1,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Bodyr: ${Simplemodel[index].body}",
                          maxLines: 1,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });

  
  }
  Future<List<simplemodel>>getData()async{
    final response=  await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map<String,dynamic>index in data){
        Simplemodel.add(simplemodel.fromJson(index));
      }
      return Simplemodel;
    }else{
      return Simplemodel;
    }
  }
  
}

