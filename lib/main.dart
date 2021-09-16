
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/material.dart';
import 'Screens/sample.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2962D1),
        accentColor: Color(0xFFF3F3F3),
      ),
      home: HomePage(),

));