
import 'package:flutter/material.dart';

import 'Countries.dart';

class CityDropDown extends StatefulWidget {

  @override
  _CityDropDownState createState() => _CityDropDownState();
}

class _CityDropDownState extends State<CityDropDown> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey)
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Countries()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('India', style: TextStyle(
              fontSize: 18
            ),),
            Icon(Icons.arrow_drop_down_outlined, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}


