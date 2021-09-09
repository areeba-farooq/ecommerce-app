import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/material.dart';

import 'CategoryContainer.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text('Categories', style: TextStyle(
          color: Colors.black,
          fontSize: 22
        ),),
      ),
      body: SafeArea(
        child: buildCategoryContainer(context),
      ),
    );
  }
}
