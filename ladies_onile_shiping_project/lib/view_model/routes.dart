import 'package:flutter/material.dart';
import 'package:ladies_onile_shiping_project/common/constants/route_constant.dart';
import 'package:ladies_onile_shiping_project/view/welcome_screen/welcome_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteList.welcome: (context) => Welcomescreen(),
    };
  }}