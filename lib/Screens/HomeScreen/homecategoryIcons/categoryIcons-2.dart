import 'package:flutter/material.dart';

import 'Icons.dart';

Row buildHomeCategoryIcons2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CategoryIcons(
          text: 'Jobs',
          img: 'assets/icons/find-matching-job.png'),
      CategoryIcons(
          text: 'Services', img: 'assets/icons/services.png'),
      CategoryIcons(
          text: 'Entertain..',
          img: 'assets/icons/dancing.png'),
      CategoryIcons(
          text: 'View All',
          img: 'assets/icons/icons8-view-more-50.png'),
    ],
  );
}