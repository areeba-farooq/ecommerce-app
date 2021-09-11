import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '1 July 2020',
      style: TextStyle(
          color: Colors.blueGrey.withOpacity(0.5),
          fontSize: 18,
          fontWeight: FontWeight.w500),
    );
  }
}