import 'package:flutter/material.dart';

class Menucontiner extends StatefulWidget {
  const Menucontiner({
    super.key,
    required this.onpressed,
    required this.title,
  });
  // final String name;
  // final String subname;
  final Function onpressed;
  final String title;

  @override
  State<Menucontiner> createState() => _MenucontinerState();
}

class _MenucontinerState extends State<Menucontiner> {
   bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed:(){
                 
                 setState(() {
                    isSelected = !isSelected;
                 });
                   widget.onpressed(isSelected);
                },
                icon: Icon(
                 isSelected? Icons.check_box: Icons.check_box_outline_blank ,
                  size: 20,
                  color: Colors.white,
                )),
            Text(widget.title,
              //"Pine apple juice",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
