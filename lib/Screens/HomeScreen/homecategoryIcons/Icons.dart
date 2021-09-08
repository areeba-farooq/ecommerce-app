import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  final String text;
  final img;

  CategoryIcons({required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}