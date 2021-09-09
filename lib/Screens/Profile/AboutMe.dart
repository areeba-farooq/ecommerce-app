import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Text('About Me', style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500
      ),),
    );
  }
}