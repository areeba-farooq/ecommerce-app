import 'package:flutter/material.dart';

import 'TextFiled.dart';


class ContactTextInputField extends StatelessWidget {
  const ContactTextInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 330,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            TextInputField1(
              labelName: 'Mobile Number',
              hintName: '+91 12345678',
              secure: false,
              keyBoardType: TextInputType.phone,
            ),
            TextInputField1(
              labelName: 'Email',
              hintName: 'Enter your email address',
              secure: false,
              keyBoardType: TextInputType.emailAddress,
            ),
            TextInputField1(
              labelName: 'Website',
              hintName: 'www.demo.com',
              secure: false,
              keyBoardType: TextInputType.url,
            ),
            TextInputField1(
              labelName: 'Address',
              hintName: 'Enter your full address',
              secure: false,
              keyBoardType: TextInputType.streetAddress,
            )
          ],
        ));
  }
}

