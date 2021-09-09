import 'package:flutter/material.dart';


class ContactTextFieldContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            TextFormField(name: 'Password', hintName: 'Enter your Password', secureText: true, keyboardType: TextInputType.visiblePassword,),
            SizedBox(height: 20,),
            TextFormField(name: 'Confirm Password', hintName: 'Re-type your Password', secureText: true, keyboardType: TextInputType.visiblePassword,),
          ],
        ));
  }
}

class TextFormField extends StatelessWidget {
  final String name;
  final String hintName;
  final keyboardType;
  final bool secureText;

  TextFormField({required this.name, required this.hintName, this.keyboardType, required this.secureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: secureText,
        decoration: InputDecoration(
            labelText: name,
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 25,
                letterSpacing: 0.5),
            hintText: hintName,
            hintStyle: TextStyle(
                color: Colors.grey, fontSize: 15, height: 2),

            //to show hint text always with label text
            floatingLabelBehavior:
            FloatingLabelBehavior.always),
        keyboardType: keyboardType,
      ),
    );
  }
}
