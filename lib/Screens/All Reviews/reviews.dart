import 'package:dubuz_app/Screens/All%20Reviews/rating.dart';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Description.dart';
import 'User.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'All Reviews',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
                User(),
                Rating(),
                DescriptionText(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFB7B7B7),
                  indent: 30,
                  endIndent: 320,
                  thickness: 2,
                ),
                SizedBox(height: 30,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

