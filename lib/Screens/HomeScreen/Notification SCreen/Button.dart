import 'package:flutter/material.dart';

class TextbUtton extends StatelessWidget {
  const TextbUtton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 300.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            'View More',
          )),
    );
  }
}