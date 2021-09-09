import 'package:flutter/material.dart';

import 'Screens/CategoriesScreen/Categories.dart';
import 'Screens/FavouriteAds/FavAds.dart';
import 'Screens/Sub-Categories/subCategory.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2962D1),
        accentColor: Color(0xFFF3F3F3),
      ),
      home: FavAds(),

));