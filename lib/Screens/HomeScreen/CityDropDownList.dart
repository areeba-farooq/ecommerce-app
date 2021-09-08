import 'package:flutter/material.dart';

class CityDropDown extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 35,
      width: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'India',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
          Icon(
            Icons.arrow_drop_down_outlined,
            color: Color.fromRGBO(125, 173, 247, 1),
            size: 30,
          )
        ],
      ),
    );
  }
}
