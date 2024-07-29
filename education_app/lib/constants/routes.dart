import 'package:education_app/constants/routes_constants.dart';
import 'package:education_app/view/splish_screen/splish_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteList.welcome: (context) => Splishscreen(),
    };
  }
}