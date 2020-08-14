import 'package:flutter/material.dart';
import 'package:flutter_world_time_application/pages/choose_location.dart';
import 'package:flutter_world_time_application/pages/home.dart';
import 'package:flutter_world_time_application/pages/loading.dart';

void main() =>runApp(MaterialApp(
  initialRoute: '/',
  routes :{
    '/':(context) =>Loading(),
    '/home':(context) =>Home(),
    '/location':(context) =>ChooseLocation()
  }
));

