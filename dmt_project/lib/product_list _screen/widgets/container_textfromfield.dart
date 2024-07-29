import 'package:flutter/material.dart';

class Textfromfieldscreen extends StatelessWidget {
  // final TextEditingController _searchController = TextEditingController();
  const Textfromfieldscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        width: double.infinity,
        height: 40,
        
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,color: Colors.green,),
                suffixIcon: Icon(Icons.mic,color: Colors.green,),
               // hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
   
      );
  }
}