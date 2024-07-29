import 'package:flutter/material.dart';

import '../men_item/men_item_model.dart';

class Accordionscreen extends StatefulWidget {
  const Accordionscreen({super.key});

  @override
  State<Accordionscreen> createState() => _AccordionscreenState();
}

class _AccordionscreenState extends State<Accordionscreen> {
    final List<Map<String, dynamic>> _items = List.generate(
      20,
      (index) => {
            'id': index,
            'title': 'Item $index',
            'description':
                'This is the description of the item $index. There is nothing important here. In fact, it is meaningless.',
            'isExpanded': false
          });
          


  @override
  Widget build(BuildContext context) {

     List<ItemlistData> menuList = [];
    for (var product in menuData) {
      menuList.add(ItemlistData.fromJson(product));
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Accordion screen'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 3,
          // Controlling the expansion behavior
          expansionCallback: (index, isExpanded) {
            setState(() {
              _items[index]['isExpanded'] = !isExpanded;
            });
          },
          animationDuration: const Duration(milliseconds: 600),
          children: menuList
              .map(
                (item) => ExpansionPanel(
                  canTapOnHeader: true,
                  backgroundColor:
                      item.isExpanded == true ? Colors.green : Colors.white,
                  headerBuilder: (_, isExpanded) => Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: Text(
                        item.type,
                        style: const TextStyle(fontSize: 20),
                      )),
                  body: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Text(item.items.toString()),
                  ),
                  isExpanded: item.isExpanded,
                ),
              )
              .toList(),
        ),
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
