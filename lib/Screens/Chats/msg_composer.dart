import 'package:flutter/material.dart';

class MsgComposer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 60.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF79A5FF),
              Theme.of(context).primaryColor.withOpacity(0.2),],
            stops: [0.0, 1.0]
        ),

        // borderRadius: BorderRadius.circular(30.0)
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.emoji_emotions_outlined),
            iconSize: 22.0,
            color: Colors.white,
          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.photo),
            iconSize: 22.0,
            color: Colors.white,
          ),
          Expanded(child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration.collapsed(
                hintText: 'Type a message...',
                hintStyle: TextStyle(
                    fontFamily: 'Yanonekafeesatz',
                    fontSize: 18.0,
                    color: Colors.white
                )
            ),
          )),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.send),
            iconSize: 22.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}