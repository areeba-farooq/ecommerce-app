import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/material.dart';

import 'AccountList.dart';
import 'Header.dart';

class MyAccount extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Theme.of(context).primaryColor,
      appBar:  AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text('My Account', style: TextStyle(
            color: Colors.white,
            fontSize: 22
        ),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.person_outline, color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AccountHeader(),
            AccountContainer()
          ],
        ),
      ),

    );
  }
}
