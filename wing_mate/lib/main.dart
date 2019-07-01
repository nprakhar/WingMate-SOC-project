import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/events_sl.dart';
import './ui/group_play_sl.dart';
import './ui/events_form_sl.dart';

void main(){
  runApp(new MaterialApp(
    title: 'WingMate',
    initialRoute: '/home',
    routes: {
      '/home' : (context) => new Home(),
      '/events_sl' : (context) => new EventsSL(),
      '/group_play_sl' : (context) => new GroupPlaySL(),
      '/events_form_sl' : (context) => new EventsFormSL(),
    },
    home: new Home(),
  ));
}