import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dmt_project/product_api/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Productapiscreen extends StatefulWidget {
  const Productapiscreen({super.key});

  @override
  State<Productapiscreen> createState() => _ProductapiscreenState();
}

class _ProductapiscreenState extends State<Productapiscreen> {
  List<ProductModel>productModel=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("product Api screen"),
        backgroundColor: Colors.amber,
      ),
     body: FutureBuilder(
        builder: (context, snapshot) {
          
          if( snapshot.hasData){
            return  ListView.builder(
          itemCount: productModel.length,
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
                            " Id: ${ productModel[index].id}",
                            style: TextStyle(fontSize: 18),
                          ),
                          // Text(
                          //   "Id: ${ productModel[index].title}",
                          //   style: TextStyle(fontSize: 18),
                          // ),
                          Text(
                            "Title: ${ productModel[index].title}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "price: ${ productModel[index].price}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "description: ${ productModel[index].description}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "category: ${ productModel[index].category}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "image: ${ productModel[index].image}",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                            Text(
                            "rating: ${ productModel[index].rating}",
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
  Future<List<ProductModel>>getData()async{
    final response= await http.get(Uri.parse("https://fakestoreapi.com/products"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map<String, dynamic>index in data ){
        productModel.add(ProductModel.fromJson(index));

      }
      return productModel;
    }else{
      return productModel;
    }
  } 
}
 
