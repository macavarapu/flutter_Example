import 'package:flutter/material.dart';

class Timerprovider extends ChangeNotifier{
  int countDown=1144;
  updateTimer(){
    countDown--;
   notifyListeners();
  }
}