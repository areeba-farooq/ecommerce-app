import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String name;
  Heading({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18),
      ),
    );
  }
}