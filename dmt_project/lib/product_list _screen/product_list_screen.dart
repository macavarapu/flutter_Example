import 'package:dmt_project/product_list%20_screen/widgets/bottom_Navigationbar.dart';
import 'package:dmt_project/product_list%20_screen/widgets/carousel_slider.dart';
import 'package:dmt_project/product_list%20_screen/widgets/container_textfromfield.dart';
import 'package:dmt_project/product_list%20_screen/widgets/occation_listview.dart';
import 'package:flutter/material.dart';

class Productlistscreen extends StatefulWidget {
  const Productlistscreen({super.key});

  @override
  State<Productlistscreen> createState() => _ProductlistscreenState();
}

class _ProductlistscreenState extends State<Productlistscreen> {
  @override
  // final TextEditingController _searchController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.login_sharp,
                color: Colors.white,
              )),
        ],
        title: Textfromfieldscreen(),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Choose Your Occation",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Occationlistviewscreen (),
               Occationlistviewscreen (),
               Carousalslider(),
               
         
            ],
          ),
        ),
      ),

//    floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
// floatingActionButton: FloatingActionButton(
//   onPressed: () {},
//   child: const Icon(Icons.home_filled),
// ),
// bottomNavigationBar: BottomAppBar(
//   color: Colors.green,
//   shape: const CircularNotchedRectangle(),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       IconButton(
//         onPressed: () {},
//         icon: const Icon(Icons.shopping_bag),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: const Icon(Icons.money),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: const Icon(Icons.currency_bitcoin),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: const Icon(Icons.bar_chart),
//       ),
//     ],
//   ),
// ),
    
      
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.green,
        ),
        child: BottomNavigationBar(
          
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.festival), label: "All Occasions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.checklist_outlined), label: "Todo"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop), label: "AllShops"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
                
          ],
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: new FloatingActionButton(
        
        shape: CircleBorder(eccentricity: 1),
     
        onPressed:(){  },
        tooltip: 'Increment',
        child: new Icon(Icons.home,color: Colors.green,),
      ), 

  
    );
  }
}
