import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'get_model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Getapiscreen extends StatefulWidget {
  const Getapiscreen({super.key});

  @override
  State<Getapiscreen> createState() => _GetapiscreenState();
}

class _GetapiscreenState extends State<Getapiscreen> {
  List<GetModel>getModel=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ssssss") ,
       backgroundColor: Colors.amber,
      ),
       body: FutureBuilder(
        builder: (context, snapshot) {
          
          if( snapshot.hasData){
            return  ListView.builder(
          itemCount: getModel.length,
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
                            "  postId: ${ getModel[index]. postId}",
                            style: TextStyle(fontSize: 18),
                          ),
                          // Text(
                          //   "Id: ${ productModel[index].title}",
                          //   style: TextStyle(fontSize: 18),
                          // ),
                          Text(
                            "id: ${ getModel[index].id}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "name: ${ getModel[index].name}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "email: ${ getModel[index].email}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "body: ${ getModel[index].body}",
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

  Future<List<GetModel>>getData()async{
    final response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1/comments"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map<String,dynamic>index in data){
        getModel.add(GetModel.fromJson(index));
      }
      return getModel;
    }else{
      return getModel;
    }
  }
}