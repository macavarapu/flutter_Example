import 'package:dmt_project/accordition_widgets/accordition_screen.dart';
import 'package:dmt_project/continer_pop%20up/tringle_screen.dart';
import 'package:dmt_project/product_api/product_api_screen.dart';
import 'package:dmt_project/product_list%20_screen/product_list_screen.dart';
import 'package:dmt_project/simple_screen/continer.dart';
import 'package:dmt_project/simple_screen/simple_screen.dart';
import 'package:dmt_project/text_formfield/textform_field.dart';
import 'package:dmt_project/text_screen/text_screen.dart';
import 'package:flutter/material.dart';

import 'album_screnn/album_screen.dart';
import 'api_call_screen/get_api_screen.dart';
import 'api_call_screen/home_screen.dart';
import 'api_screen/simple.dart';
import 'card_screen/card_screen.dart';
import 'card_screen/card_screen1.dart';
import 'continer_pop up/clipper_screen.dart';
import 'continer_pop up/continer_pop up.dart';
import 'continer_pop up/continer_pop_up.dart';
import 'continer_pop up/menuitemprovider_screen.dart';
import 'continer_pop up/pop_screen.dart';
import 'counter _app/counter_screen.dart';
import 'get_apicall_screen/get_api_screen.dart';
import 'login_screen/login_screen.dart';
import 'men_item/menu_items.dart';
import 'men_item/menuitem_list.dart';
import 'order_screen/ordered_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute:    "/alertdialog",  // "/menu screen",     //"/menu items" ,
      // routes: {
      //   "/menu items":(context) => Menuitemlist(), 
      //   "/simple screen":(context) => Simplescreen(),
      //   "/add two number ":(context) => Textformfield() ,  
      //   "/order screen":(context) =>  Orderedscreen1 () ,
      //   "/text screen" :(context) => Textscreen(),
      //   "/continer screen":(context) =>  ContinerScreen()  , 
      //   "/menu screen" :(context) => MenuScreen(),
      //   "/alertdialog":(context)=>AlertDialogExampleApp (),
      //  "/continerpopup screen":(context)=> Continerpopupscreen(),
      //  "/triangleclipperscreeen":(context)=>TriangleClipperscreen() ,
      //  "/clipperscreen":(context)=> clipperscreen (),
      // },
    
      home: Getapiscreen(),  // Productapiscreen(),   // Albumscreen(), //SimpleApiscreen (),  //Simplescreen(),  //Homescreen (),   //Accordionscreen() ,  //AlertDialogExampleApp (),  // Continerpopupscreen() , // TriangleClipperscreen() ,  // Continerpopupscreen() ,  // clipperscreen (),  // TriangleClipperscreen () ,  //Continerpopupscreen() ,       ///TriangleClipperscreen() , //Continerpopupscreen() ,     //Productlistscreen() ,       /// Accordionscreen() ,  //Menuitemlist() ,  ///Productlistscreen() ,  // Menuitemlist() ,  // Orderedscreen1() ,  // Menuitemlist() ,    //cardscreen() ,    //Counterstatefull() ,   //Textformfield() ,   //cardscreen() ,  // Cardscreen() ,  //Loginscreen() ,  // Textformfield(),  // Menuitemlist() ,    //const MenuScreen(),    //Menuitemlist(),  // Menitemsscreen() ,   // Simplescreen(), // Textformfield() ,    // Orderedscreen1 () ,      // ContinerScreen()  ,   // Simplescreen() ,   //Orderdscreen() ,//Orderedscreen1() ,     //Textscreen(),/// Simplescreen() ,
    );
  }
}
