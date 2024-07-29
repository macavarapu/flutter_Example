import 'package:flutter/material.dart';

class cardscreen extends StatefulWidget {
  const cardscreen({super.key});

  @override
  State<cardscreen> createState() => _cardscreenState();
}

class _cardscreenState extends State<cardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("card"),
        backgroundColor: Colors.purple,
      ),
      body: Card(
        color: Colors.amber,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.surfaceVariant,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 500,
          height: 200,
          child: Row(
            children: [
             Image.network('https://picsum.photos/250?image=9',height: 100,width: 150,),
              // Icon(
              //   Icons.mobile_off_rounded,
              //   size: 100,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Awesome Value Comboy",
                    style: TextStyle(fontSize: 20, color: Colors.greenAccent),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "****",
                        style: TextStyle(fontSize: 35, color: Colors.green),
                      ),
                      Text(
                        " (5)",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "  \$444  ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
