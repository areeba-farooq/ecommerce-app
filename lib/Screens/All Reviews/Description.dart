import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 20),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}
