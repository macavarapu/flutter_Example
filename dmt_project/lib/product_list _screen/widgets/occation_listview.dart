import 'package:flutter/material.dart';

class Occationlistviewscreen extends StatefulWidget {
  const Occationlistviewscreen({super.key});

  @override
  State<Occationlistviewscreen> createState() => _OccationlistviewscreenState();
}

class _OccationlistviewscreenState extends State<Occationlistviewscreen> {
  List<String>party=["4.jpg","5.jpg","6.jpg","4.jpg","5.jpg","6.jpg"];
  List<String>partyName=["Birthday party","Marriage","New year","Birthday party","Marriage","New year"];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
     height: 150,
      //height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
         shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          
         itemCount: party.length,
          itemBuilder:  (context, index) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                    elevation: 10,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                  
                    child: SizedBox(
                     // height: 50,
                      width: 150,
                        child: Column(
                       
                            children: [
                              Image(
                                image: AssetImage(
                                  "assets/images/${party[index]}",
                                ),
                               // height: 100,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${partyName[index]}",),
                              ],
                             )
                          
                       
                        ],
                      ),
                    ),
                  ),
            );
            
                  
                
          }
          
      ),
    );
  }
}