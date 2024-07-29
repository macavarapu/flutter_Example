import 'package:flutter/material.dart';
import 'package:popup_menu_2/contextual_menu.dart';
import 'package:popup_menu_2/popup_menu_item.dart';
class TriangleClipperscreen extends StatefulWidget {
  const TriangleClipperscreen({super.key});

  @override
  State<TriangleClipperscreen> createState() => _TriangleClipperscreenState();
}

class _TriangleClipperscreenState extends State<TriangleClipperscreen> {
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
     return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("screen"),
          backgroundColor: Colors.amber,
         
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: PhysicalModel(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      elevation: 10,
                      child: add(context),
                      
                    
                ),
               
              ),
            ),
               Text(
                'You have pushed the button this many times:',
              ),
              Text(
                _counter.toStringAsFixed(3),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
          ],
          
        ),
      ),
    );
  }

  Widget add(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width:300,
        child: ContextualMenu(
          targetWidgetKey: key,
          ctx: context,
          maxColumns: 2,
          backgroundColor: Colors.red,
          highlightColor: Colors.white,
          onDismiss: () {
            setState(() {
              _counter = _counter * 1.2;
            });
          },
          items: [
            CustomPopupMenuItem(
              press: _incrementCounter,
              title: 'increment increment increment increment increment',
              textAlign: TextAlign.justify,
              textStyle: const TextStyle(color: Colors.white),
              image: const Icon(Icons.add, color: Colors.white),
            ),
            //  CustomPopupMenuItem(
            //   press: _incrementCounter,
            //   title: 'Sub',
            //   textAlign: TextAlign.justify,
            //   textStyle: const TextStyle(color: Colors.white),
            //   image: const Icon(Icons.add, color: Colors.white),
            // ),
            CustomPopupMenuItem(
              press: _decrementCounter,
              title: 'decrement',
              textAlign: TextAlign.justify,
              textStyle: const TextStyle(color: Colors.white),
              image: const Icon(Icons.remove, color: Colors.white),
            ),
          ],
          child: Icon(
            Icons.add,
            key: key,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  
}