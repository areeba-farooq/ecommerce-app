import 'package:dubuz_app/Screens/HomeScreen/Notification%20SCreen/Notification_Screen.dart';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/material.dart';
import 'Screens/HomeScreen/Notification SCreen/Notification_Screen.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2962D1),
        accentColor: Color(0xFFF3F3F3),
      ),
      home: NotificationScreen(),

));