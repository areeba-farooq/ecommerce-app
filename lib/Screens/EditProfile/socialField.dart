import 'package:flutter/material.dart';

import 'TextFiled.dart';


class SocialField extends StatelessWidget {
  const SocialField({
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
              labelName: 'Facebook',
              hintName: 'www.facebook.com/...',
              secure: false,
              keyBoardType: TextInputType.url,
            ),
            TextInputField1(
              labelName: 'Twitter',
              hintName: 'www.twitter.com/...',
              secure: false,
              keyBoardType: TextInputType.url,
            ),
            TextInputField1(
              labelName: 'Instagram',
              hintName: 'www.instagram.com/...',
              secure: false,
              keyBoardType: TextInputType.url,
            ),
            TextInputField1(
              labelName: 'Google',
              hintName: 'www.google.com/...',
              secure: false,
              keyBoardType: TextInputType.url,
            )
          ],
        ));
  }
}
