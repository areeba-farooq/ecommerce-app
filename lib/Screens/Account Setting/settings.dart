import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/My%20Account/myAccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BasicInfo.dart';
import 'ContactInfo.dart';
import 'BasicTextFiled.dart';
import 'ContactTextField.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAccount()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: 100,
              width: 500,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/profile4.jpg'),
                      radius: 40,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Alina Khan',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Active since Monday',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BasicInfo(),
            SizedBox(
              height: 10,
            ),
            BasicTextFieldContainer(),
            SizedBox(
              height: 20,
            ),
            ContactInfo(),
            SizedBox(
              height: 10,
            ),
            ContactTextFieldContainer()
          ],
        ),
      ),
    );
  }
}
