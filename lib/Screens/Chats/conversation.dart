import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:flutter/material.dart';

import 'User_model.dart';
import 'msg_composer.dart';


class Conversation extends StatefulWidget {

  final UserModel user;
  Conversation({required this.user});

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {

  _buildMessage(MsgModel message, bool isMe){
    final msg = Container(
      margin: isMe? EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 80.0)
          : EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,),
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: isMe? Theme.of(context).accentColor.withOpacity(0.5):
        Color(0xFFDAE7FF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time, style: TextStyle(fontSize: 12),),
          SizedBox(height: 5.0,),
          Text(message.text, style: TextStyle(fontSize: 15),),
        ],),
    );
    if(isMe){
      return msg;
    }

    return Row(
      children: [
        msg,
        IconButton(
          onPressed: (){},
          icon: message.isLiked? Icon(Icons.favorite):Icon(Icons.favorite_border),
          iconSize: 25.0,
          color: message.isLiked? Colors.red: Colors.blueGrey ,
        )
      ],);
  }

  final border = BorderRadius.only(
      topRight:  Radius.circular(30.0),
      topLeft: Radius.circular(30.0)
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.user.name,),
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
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
        elevation: 0.0,
      ),
      body: GestureDetector(
        //minimize the keyboard
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: border
                ),
                child: ClipRRect(
                  borderRadius: border,
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (context, index){
                        final MsgModel message = messages[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            MsgComposer(),
          ],),
      ),
    );
  }
}