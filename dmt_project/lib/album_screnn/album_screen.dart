import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'album_model.dart';

class Albumscreen extends StatefulWidget {
  const Albumscreen({super.key});

  @override
  State<Albumscreen> createState() => _AlbumscreenState();
}

class _AlbumscreenState extends State<Albumscreen> {
  List<alubummodel>Alubummodel=[];
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
          itemCount: Alubummodel.length,
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
                            "albumId: ${Alubummodel[index].albumId}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Id: ${Alubummodel[index].id}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Title: ${Alubummodel[index].title}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("url${Alubummodel[index].url}",
                          maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("thumbnailUrl${Alubummodel[index].thumbnailUrl}",
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

Future<List<alubummodel >>getData()async{
  final response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
  var data =jsonDecode(response.body.toString());
  if(response.statusCode==200){
    for(Map<String ,dynamic>index in data){
      Alubummodel.add(alubummodel.fromJson(index));
    }
    return Alubummodel;
  }else{
    return Alubummodel;
  }
  
}

}