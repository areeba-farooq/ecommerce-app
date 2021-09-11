import 'package:flutter/material.dart';


class TimeAndOnlineStatus extends StatelessWidget {
  const TimeAndOnlineStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 10),
          child: Text(
            '01:32 PM',
            style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}