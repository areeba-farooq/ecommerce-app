import 'package:flutter/material.dart';
import '../search_results.dart';
import 'Filter.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Filter()));
            },
            child: Text(
              'Reset All',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 50),
                padding: EdgeInsets.all(10),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ))),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchResult()));
            },
            child: Text(
              'Save & Apply',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                fixedSize: Size(150, 50),
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )))
      ],
    );
  }
}
