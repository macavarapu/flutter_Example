import 'package:flutter/material.dart';

import 'men_item_model.dart';

class Menuitemlist extends StatefulWidget {
  const Menuitemlist({super.key});

  @override
  State<Menuitemlist> createState() => _MenuitemlistState();
}

class _MenuitemlistState extends State<Menuitemlist> {

   bool isSelected = false;
 

  @override
  Widget build(BuildContext context) {
    List<ItemlistData> menuList = [];
    for (var product in menuData) {
      menuList.add(ItemlistData.fromJson(product));
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Items List"),
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        width: 400,
        child: ListView.builder(
            itemCount: menuList.length,
            itemBuilder: (context, index) {
              return Container(
                width: 350,
                height: 170,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Card(
                  color: Colors.amber,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${menuList[index].type}",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text("${menuList[index].noOfChoice}"),
                          IconButton(onPressed: (){
                          setState(() {
                            
                          });
                          }, 
                          icon: Icon(Icons.arrow_drop_up)),
                         
                        ],
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: menuList[index].items.length,
                            itemBuilder: (context, innerIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                          (isSelected);
                                        },
                                        icon: Icon(
                                        isSelected
                                              ? Icons.check_box
                                              : Icons.check_box_outline_blank,
                                          size: 20,
                                          color: Colors.white,
                                        )),
                                    //Icon(Icons.check_box_outline_blank),
                                    Text("${menuList[index].items[innerIndex]}"),
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

var menuData = [
  {
    "type": "salads",
    "noOfChoice": 1,
    "items": ["carrot", "kera dosa"],
  },
  {
    "type": "Welcome drinks",
    "noOfChoice": 1,
    "items": ["Water", "Smoothies", "Grape juice"],
  },
  {
    "type": "rots",
    "noOfChoice": 2,
    "items": ["Paratha", "Rots", " Puri"],
  },
  {
    "type": "main curries",
    "noOfChoice": 2,
    "items": ["Paneer", "Capsicum curry", "Aloo palak"],
  }
];
