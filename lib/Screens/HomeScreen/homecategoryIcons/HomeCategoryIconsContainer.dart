import 'package:flutter/material.dart';
import 'categoryIcons-1.dart';
import 'categoryIcons-2.dart';

class HomeCategoryIconsContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            builHomeCategoryIcons(),
            SizedBox(
              height: 20,
            ),
            buildHomeCategoryIcons2(),
          ],
        ));
  }
}