import 'package:dubuz_app/Screens/Chats/recent_Chats.dart';
import 'package:dubuz_app/Screens/FavouriteAds/FavAds.dart';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Post%20Free%20Ad/post_ad.dart';
import 'package:dubuz_app/Screens/Profile/myProfile.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int currentTab = 2;
  final List<Widget> screens = [
    HomePage(),
    FavAds(),
    ChatScreen(),
    Profile()
  ];

  Widget currentScreen = ChatScreen();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PostAd()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 0;
                          currentScreen = HomePage();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        });
                      }, icon: Icon(Icons.home_outlined,
                    color: currentTab == 0? Theme.of(context).primaryColor : Colors.grey,)),
                  SizedBox(width: 30,),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 1;
                          currentScreen = FavAds();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FavAds()));

                        });
                      }, icon: Icon(Icons.favorite_border,
                    color: currentTab == 1? Theme.of(context).primaryColor : Colors.grey,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 2;
                          currentScreen = ChatScreen();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));

                        });
                      }, icon: Icon(Icons.message,
                    color: currentTab == 2? Theme.of(context).primaryColor : Colors.grey,)),
                  SizedBox(width: 30,),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 3;
                          currentScreen = Profile();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));

                        });
                      }, icon: Icon(Icons.person_outline,
                    color: currentTab == 3? Theme.of(context).primaryColor : Colors.grey,)),
                  SizedBox(width: 20,),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
