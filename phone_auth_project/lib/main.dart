import 'package:flutter/material.dart';
import 'package:phone_auth_project/internet_screen/internet_screen.dart';

import 'package:phone_auth_project/screens/home_page.dart';
import 'package:phone_auth_project/screens/register_screen.dart';
import 'package:phone_auth_project/screens/welcome_screen.dart';

void main()
async
{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform
// );
//   WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/SpeedTestScreen" ,    //"/welcome" ,
     routes: {
      "/welcome":(context) => Welcomescreen(),
      "/register":(context) => Registerscreen(),
      // "/verify":(context) => MyVerify(),
        "/home":(context) => Homescreen(),
        "/SpeedTestScreen":(context) => SpeedTestScreen(),
     },
    );
  }
}

