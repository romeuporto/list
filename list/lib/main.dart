import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:list/Home.dart';

void main (){
  debugPrintBeginFrameBanner: false;
  runApp(MaterialApp(
    home: Home(),
  ));
}

