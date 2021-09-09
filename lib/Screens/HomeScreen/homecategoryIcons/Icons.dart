import 'package:dubuz_app/Screens/CategoriesScreen/Categories.dart';
import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  final String text;
  final img;
  final onTap;

  CategoryIcons({required this.text, required this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            img,
            scale: 1.8,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}