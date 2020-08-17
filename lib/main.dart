import 'package:WorldTime/Pages/choose_location.dart';
import 'package:WorldTime/Pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:WorldTime/Pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes:{
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    }
  ));
}

