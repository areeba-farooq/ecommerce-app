import 'package:flutter/material.dart';
import '../home.dart';
import 'Date.dart';
import 'Notification_cards.dart';
import 'Notification_popUp.dart';
import 'UnreadNotification_card.dart';



class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        actions: [
          PopUp()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Date(),
            SizedBox(
              height: 10,
            ),
            VerticalDivider(),
            NotiCards(),
            VerticalDivider(),
            UnreadCard(),
            //*****************************************
            SizedBox(
              height: 20,
            ),
            Date(),
            SizedBox(
              height: 10,
            ),
           VerticalDivider(),
           NotiCards(),
            VerticalDivider(),
            NotiCards(),
            VerticalDivider(),
           NotiCards(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}











