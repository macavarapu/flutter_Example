import 'package:flutter/material.dart';

class ItemlistData {
  String type="";
  int noOfChoice=0;
  List<String> items=const [];
  bool isExpanded=true;

  ItemlistData({ required this.type,  required this.noOfChoice,   this.items=const []});

  ItemlistData.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    noOfChoice = json['noOfChoice'];
    items = json['items'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] =   this.type;
    data['noOfChoice'] = this.noOfChoice;
    data['items'] = this.items;
    return data;
  }
}