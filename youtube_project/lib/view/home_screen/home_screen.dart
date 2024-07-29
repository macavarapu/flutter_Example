import 'package:flutter/material.dart';
import 'package:youtube_project/widgets/home_widget/custom_sliverappbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        CustomSliverAppBar(),
        ],
      ),
    );
  }
}