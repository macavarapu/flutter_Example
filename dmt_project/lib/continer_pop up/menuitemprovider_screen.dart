import 'package:flutter/material.dart';
import 'package:popup_menu_2/contextual_menu.dart';
import 'package:popup_menu_2/popup_menu_item.dart';

class MenuItemProviderscreen extends StatefulWidget {
  const MenuItemProviderscreen({super.key});

  @override
  State<MenuItemProviderscreen> createState() => _MenuItemProviderscreenState();
}

class _MenuItemProviderscreenState extends State<MenuItemProviderscreen> {
  double _counter = 0;
   GlobalKey key = GlobalKey();
 
  void _incrementCounter() async {
    await Future.delayed(const Duration(milliseconds: 500));
    debugPrint('awaited successfully');

    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() async {
    await Future.delayed(const Duration(milliseconds: 500));
    debugPrint('awaited successfully');
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("screen"),
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        //height: 100,
        width: 150,
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 250,
                child: ContextualMenu(
                  targetWidgetKey: key,
                   child: Icon(Icons.add),
                   ctx: context,
                   onDismiss:(){
                   
                   } ,
                    items: [
                      CustomPopupMenuItem(
                        textStyle: TextStyle(color: Colors.red), 
                        textAlign: TextAlign.center,
                         press:_incrementCounter,
                          ),
                          CustomPopupMenuItem(
                        textStyle: TextStyle(color: Colors.red), 
                        textAlign: TextAlign.center,
                         press:_decrementCounter,
                          ),

                    ],
                   
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}