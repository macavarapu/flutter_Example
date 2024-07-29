import 'package:dmt_project/men_item/menu_continer.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
    Widget build(BuildContext context) {
      List selectedItems = [];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Menu item list"),
        backgroundColor: Colors.yellow,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Total Items",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("Finalized Items",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      
              ],
            ),
         
            Container(
              height: 220,
             
              color: Colors.pink,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Column(
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Welcome Drinks(any 3)",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("1 of 3",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  ),
                    
                  Menucontiner(onpressed: (isSelected){
                        isSelected ? selectedItems.add("Pine apple juice") : selectedItems.remove("Pine apple juice"); 
                       // print(selectedItems.toString());

                  }, title: "Pine apple juice", ),
                  Menucontiner(onpressed: (isSelected){
                      isSelected ? selectedItems.add("Watermelon juice") : selectedItems.remove("Watermelon juice"); 
                  }, title: "Watermelon juice", ),
                  Menucontiner(onpressed: (isSelected){
                   isSelected ? selectedItems.add("Watermelon juice") : selectedItems.remove("Watermelon juice"); 
                  }, title: "Grape juice", ),
                  Menucontiner(onpressed: (){}, title: "Fruit punch",),
                 
               
                ],
              ),
             
            ),
             Container(
              height: 220,
             
              color: Colors.green,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Column(
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Hot Items(any1)",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("only 1",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  ),

                   Menucontiner(onpressed: (){}, title: "Arati Bajji", ),
                  Menucontiner(onpressed: (){}, title: "Masala vada", ),
                  Menucontiner(onpressed: (){}, title: "Mirchi Bajji", ),
                  Menucontiner(onpressed: (){}, title: "Alu Bajji",),
                ],
              ),
             
            ),
             Container(
              height: 220,
             
              color: Colors.red,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Column(
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Salad(any1)",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("only 1",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  ),

                   Menucontiner(onpressed: (){}, title: "Green salad", ),
                  Menucontiner(onpressed: (){}, title: "Sprout salad", ),
                  Menucontiner(onpressed: (){}, title: "mixed salad", ),
                  Menucontiner(onpressed: (){}, title: "Fruit mixed salad",),
                ],
              ),
             
            ),
             Container(
              height: 220,
              color: Colors.orange,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Column(
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Desserts(any2)",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("1 of 2",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  ),

                   Menucontiner(onpressed: (){}, title: "Vanilla Icecream", ),
                  Menucontiner(onpressed: (){}, title: "Chocolate Icecream", ),
                  Menucontiner(onpressed: (){}, title: "Coconut cream pie", ),
                  Menucontiner(onpressed: (){}, title: "Strawberry cobbler",),
                 
               
                ],
              ),
             
            ),
              Container(
              height: 220,
              color: const Color.fromARGB(255, 106, 0, 255),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Column(
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Sambar/Rasam(any1)",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("only 1",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  ),

                   Menucontiner(onpressed: (){}, title: "Sambar", ),
                  Menucontiner(onpressed: (){}, title: "Miryala Rasam", ),
                  Menucontiner(onpressed: (){}, title: "Rasam", ),
                  Menucontiner(onpressed: (){}, title: "Pachi pulusu",),
                 
               
                ],
              ),
             
            ),
            TextButton(onPressed: (){},
             child: Text("Add")
             ),
              
          ],
        ),
      ),
    );
  }
}