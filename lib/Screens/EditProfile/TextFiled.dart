import 'package:flutter/material.dart';

class TextInputField1 extends StatelessWidget {
  final String labelName;
  final String hintName;
  final bool secure;
  final keyBoardType;

  TextInputField1(
      {required this.hintName,
        required this.labelName,
        required this.keyBoardType,
        required this.secure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: secure,
        decoration: InputDecoration(
            labelText: labelName,
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 25,
                letterSpacing: 0.5),
            hintText: hintName,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15, height: 2),

            //to show hint text always with label text
            floatingLabelBehavior: FloatingLabelBehavior.always),
        keyboardType: keyBoardType,
      ),
    );
  }
}
