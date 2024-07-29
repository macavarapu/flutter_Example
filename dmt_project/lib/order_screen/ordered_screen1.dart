import 'package:flutter/material.dart';

import 'ordered_model.dart';

class Orderedscreen1 extends StatefulWidget {
  const Orderedscreen1({super.key});

  @override
  State<Orderedscreen1> createState() => _Orderedscreen1State();
}

class _Orderedscreen1State extends State<Orderedscreen1> {
  

  @override
  Widget build(BuildContext context) {
      List<Order> ordersList=[];
   for(var product in jsonRes){
        ordersList.add(Order.fromJson(product));
   }
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text("Ordered screen"),
        backgroundColor: Colors.yellow,
      ),
       body: ListView.builder(
         itemCount: ordersList.length,
        itemBuilder:  (context, index){
          return   Card(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
              
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.check_box,color: Colors.blue,),
                       Text("  ordered id:${ordersList[index].orderId}"  ,
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  //color: Colors.white70,
                                  ),
                                ),
          
                    ],
                  ),
              
                ),
              ),
              Container(
      
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child:   Text((ordersList[index].itemName) ?? "No Name"),
                 
                ),
              ),
              Container(
               
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                 child:    Text("status:${ordersList[index].status}",
                          style: 
                          TextStyle(backgroundColor: (ordersList[index].status == 'ordered')? Colors.green : 
                           (ordersList[index].status == 'packed')   ? Colors.blue  :   
                           (ordersList[index].status == 'confirmed')   ? Colors.red  :  
                           (ordersList[index].status == 'confirmed')   ? Colors.pink  :  
                           (ordersList[index].status == 'in Transit')   ? Colors.yellow  :  
                           (ordersList[index].status == 'ordered"')   ? Colors.blueGrey :  
                              (ordersList[index].status == 'completed')   ? Color.fromARGB(255, 58, 3, 130) :   Colors.green 
                                    ),),
                ),
              ),
              Container(
                child: Row(
                  children: [
                      Icon(Icons.person_2_rounded),
                          Text("  5"),
                  ],
                ),
              ),
            ],
               ),
          );
        }

         
       ),
    
    );
  }
}
var jsonRes=[
  {
"itemName":"Chicken Burrito",
"orderId":1,
"status":"ordered"
},
{
"itemName":"gifts",
"orderId":2,
"status":"packed"
},
{
"itemName":"decoration",
"orderId":3,
"status":"confirmed"
},
{
"itemName":"cakes",
"orderId":4,
"status":"confirmed"
},
{
"itemName":"food",
"orderId":5,
"status":"in Transit"
},
{
"itemName":"biscuites",
"orderId":6,
"status":"ordered"
},

{
"itemName":"birthday caps",
"orderId":7,
"status":"completed"
}

];