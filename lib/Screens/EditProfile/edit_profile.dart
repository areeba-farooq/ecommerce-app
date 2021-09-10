import 'package:dubuz_app/Screens/Account%20Setting/BasicInfo.dart';
import 'package:dubuz_app/Screens/Account%20Setting/ContactInfo.dart';
import 'package:dubuz_app/Screens/Chats/conversation.dart';
import 'package:dubuz_app/Screens/EditProfile/socialField.dart';
import 'package:dubuz_app/Screens/EditProfile/socialLinks.dart';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Profile/myProfile.dart';
import 'package:flutter/material.dart';

import 'BasicField.dart';
import 'ContactField.dart';
import 'TextFiled.dart';
import 'editPicture.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Edit Profile',
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
            EditPicture(),
            SizedBox(
              height: 20,
            ),
            BasicInfo(),
            SizedBox(
              height: 10,
            ),
            BasicTextInputField(),
            SizedBox(
              height: 20,
            ),
            ContactInfo(),
            SizedBox(
              height: 10,
            ),
            ContactTextInputField(),
            SizedBox(
              height: 20,
            ),
            SocialLinks(),
            SizedBox(
              height: 10,
            ),
            SocialField(),
          ],
        ),
      ),
    );
  }
}
