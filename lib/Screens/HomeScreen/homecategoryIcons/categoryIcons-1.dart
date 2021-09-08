import 'package:flutter/material.dart';

import 'Icons.dart';

Row builHomeCategoryIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CategoryIcons(
        img: 'assets/icons/traffic-jam.png',
        text: 'Cars & Bikes',
      ),
      CategoryIcons(
        img: 'assets/icons/tv.png',
        text: 'Electronics...',
      ),
      CategoryIcons(
        img: 'assets/icons/home-page.png',
        text: 'Home & LifeS..',
      ),
      CategoryIcons(
        img: 'assets/icons/real-estate.png',
        text: 'Real Estate',
      ),
    ],
  );
}