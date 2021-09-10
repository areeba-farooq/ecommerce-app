import 'package:dubuz_app/Screens/Chats/recent_Chats.dart';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        title: Text('Chats', style: TextStyle(
            color: Colors.white,
            fontSize: 22
        ),),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.delete, color: Colors.blue, size: 18,),
                        SizedBox(width: 5,),
                        Text("Delete" ),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Mark as read" ),
                  ),
                )
              ]
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            RecentChats()
          ],
        ),
      ),
    );
  }
}
