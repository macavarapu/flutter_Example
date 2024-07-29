import 'package:flutter/material.dart';
import 'package:ladies_onile_shiping_project/common/constants/route_constant.dart';
import 'package:ladies_onile_shiping_project/view_model/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: RouteList.initial,
        routes: Routes.routes,
    );
  }
}
