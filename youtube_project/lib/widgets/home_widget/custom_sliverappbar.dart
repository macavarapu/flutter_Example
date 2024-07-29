import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Image.asset("assets/images/1.png"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(child: Icon(Icons.person)),
        ),
      ],
    );
  }
}
