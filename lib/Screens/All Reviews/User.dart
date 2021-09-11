import 'package:flutter/material.dart';


class User extends StatelessWidget {
  const User({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 20),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Theme.of(context).primaryColor,
            child: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          'Vimla Madam',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
