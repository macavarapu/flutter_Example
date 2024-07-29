import 'package:flutter/material.dart';

class Simplescreen extends StatelessWidget {
  const Simplescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter "),
      
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Text("Flutter"),
      ),
       drawer : Drawer(
            child: ListView(
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'GeeksforGeeks',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  leading: Icon(Icons.people),
                ),
                ListTile(
                  title: Text('Item 2'),
                  leading: Icon(Icons.mail),
                ),
              ],
            ),
          ),
      
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.add),
        onPressed: () {
          // action on button press
        },
      ),
    );
  }
}
