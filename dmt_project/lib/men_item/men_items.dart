import 'package:dropdown_model_list/drop_down/model.dart';
import 'package:dropdown_model_list/drop_down/select_drop_list.dart';
import 'package:flutter/material.dart';

import 'men_item_model.dart';

class Menitemsscreen extends StatefulWidget {
  const Menitemsscreen({super.key});

  @override
  State<Menitemsscreen> createState() => _MenitemsscreenState();
}

class _MenitemsscreenState extends State<Menitemsscreen> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "salads"),
    OptionItem(id: "2", title: "Welcome drinks"),
    OptionItem(id: "3", title: "rots"),
    OptionItem(id: "4", title: "main curriesr"),
   
  ]);
  OptionItem optionItemSelected = OptionItem(title: "Select Items List");


   
  @override
  Widget build(BuildContext context) {
    List< ItemlistData > menList=[];
   for(var product in menuData){
        menList.add(ItemlistData.fromJson(product));
   }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Men items"),
        backgroundColor: Colors.yellow,
      ),
         body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            SelectDropList(
              itemSelected:optionItemSelected,
              dropListModel:dropListModel,
              showIcon: true,     // Show Icon in DropDown Title
              showArrowIcon: true,     // Show Arrow Icon in DropDown
              showBorder: true,
              paddingTop: 0,
             // icon: const Icon(Icons.person,color: Colors.black),
              onOptionSelected:(optionItem){
                optionItemSelected = optionItem;
                setState(() {});
              },
            )
          ],
        ),
      ),
 
    );
  }
}
var menuData=[
  {
    "type":"salads",
  "noOfChoice":1,
  "items":["carrot","kera dosa"],
  },
  {"type":"Welcome drinks",
  "noOfChoice":1,
  "items":["Water","Smoothies","Grape juice"],
  },
  {"type":"rots",
  "noOfChoice":2,
  "items":["Paratha","Rots"," Puri"],
  },
  {"type":"main curries",
  "noOfChoice":2,
  "items":["Paneer","Capsicum curry","Aloo palak"],
  }
  ];