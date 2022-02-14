

import 'package:flutter/material.dart';
import 'Screens/CategoriesScreen/Categories.dart';
import 'Screens/HomeScreen/home.dart';
import 'Screens/Post Free Ad/adFields.dart';
import 'Screens/Post Free Ad/postCategory.dart';
import 'Screens/Post Free Ad/practice.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2962D1),
        accentColor: Color(0xFFF3F3F3),
      ),
      home: Categories(),

));
