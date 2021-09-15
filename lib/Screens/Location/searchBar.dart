import 'package:flutter/material.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 50,
      width: 380,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.search, color: Colors.grey,size: 30,),
          ),
          SizedBox(width: 10),
          Text('Where you want to go?', style: TextStyle(
              color: Colors.grey,
              fontSize: 20
          ),)
        ],
      ),
    );
  }
}
