

import 'package:bhoomi_app/view/language_screen/language_screen.dart';
import 'package:bhoomi_app/view/login_screen/login_screen.dart';
import 'package:bhoomi_app/view/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';

import '../constants/routes_constants.dart';
import '../view/welcome_screen/welcome_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteList.welcome: (context) => Welcomescreen(),
      RouteList.language:(context) => Languagescreen(),
      RouteList.login:(context) => Loginscreen(),
      RouteList.register:(context) => Registerscreen(),
    };
  }
  }