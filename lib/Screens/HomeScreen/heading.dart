import 'package:flutter/material.dart';

Padding buildHeading() {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: RichText(
        text: TextSpan(
            text: 'Explore',
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
            children: <TextSpan>[
              TextSpan(text: ' For You', style: TextStyle(
                  color: Colors.grey,
                  fontSize: 28,
                  fontWeight: FontWeight.w500
              ))
            ]),

      )
  );
}