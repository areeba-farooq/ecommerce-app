import 'package:dubuz_app/Screens/Sub-Categories/subCategoryList.dart';
import 'package:flutter/material.dart';

import '../HomeScreen/home.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar:AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text('Car & Bikes', style: TextStyle(
            color: Colors.black,
            fontSize: 22
        ),),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('All Sub Category', style: TextStyle(
                color: Colors.grey,
                fontSize: 18
              ),),
            ),
            SubCategoryListContainer()
          ],
        ),
      ),
    );
  }
}

