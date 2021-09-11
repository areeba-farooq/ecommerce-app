import 'package:flutter/material.dart';

class NotiText extends StatelessWidget {
  const NotiText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        '128gb good condition super w... @Rs22000 Just Posted!',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
    );
  }
}

class SubNotiText extends StatelessWidget {
  const SubNotiText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Text(
        'Make offer now to get Doorstep delivery',
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }
}