import 'package:flutter/material.dart';

class Counterstatefull extends StatefulWidget {
  const Counterstatefull({super.key});

  @override
  State<Counterstatefull> createState() => _CounterstatefullState();
}

class _CounterstatefullState extends State<Counterstatefull> {
  int countervalu = 0;
  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  print(countervalu);
                   setState(() {
                    countervalu++;
                   });
                },
                child:const Text(
                  "+",
                  style: TextStyle(fontSize: 100, color: Colors.red),
                )),
            Text("$countervalu"),
            TextButton(
                onPressed: () {
                  print(countervalu);
                   setState(() {
                    countervalu--;
                   });
                },
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 100, color: Colors.green),
                )),
          ],
        ),
      ),
    );
  }
}
