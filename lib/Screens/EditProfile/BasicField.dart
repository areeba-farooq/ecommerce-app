import 'package:flutter/material.dart';

import 'TextFiled.dart';


class BasicTextInputField extends StatelessWidget {
  const BasicTextInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            TextInputField1(
              labelName: 'Name',
              hintName: 'Enter your name',
              secure: false,
              keyBoardType: TextInputType.name,
            ),
            TextInputField1(
              labelName: 'About You',
              hintName: 'Write something about you',
              secure: false,
              keyBoardType: TextInputType.multiline,
            )
          ],
        ));
  }
}