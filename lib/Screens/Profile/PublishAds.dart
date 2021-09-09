import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class PublishAds extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Text('Published Ads', style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500
      ),),
    );
  }
}