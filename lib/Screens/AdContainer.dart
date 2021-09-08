import 'package:flutter/material.dart';

Container buildAdContainer() {
  return Container(
    height: 80,
    width: 380,
    decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage('images/wave.png',),
            fit: BoxFit.cover
        )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10),
          child: Text('Looking for car in budget?', style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
          ),),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 10),
          child: Text('We have Millions', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        ),
      ],
    ),
  );
}