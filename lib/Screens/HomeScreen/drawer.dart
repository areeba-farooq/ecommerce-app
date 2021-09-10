import 'package:dubuz_app/Screens/Account%20Setting/settings.dart';
import 'package:dubuz_app/Screens/CategoriesScreen/Categories.dart';
import 'package:dubuz_app/Screens/Chats/ChatScreen.dart';
import 'package:dubuz_app/Screens/FavouriteAds/FavAds.dart';
import 'package:dubuz_app/Screens/My%20Account/myAccount.dart';
import 'package:dubuz_app/Screens/MyAds/myAds.dart';
import 'package:dubuz_app/Screens/Welcome%20Screen/welcome.dart';
import 'package:flutter/material.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
            currentAccountPicture: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAccount()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile4.jpg'),
              ),
            ),
            accountName: Text(
              'Alina Khan',
              style: TextStyle(fontSize: 20),
            ),
            accountEmail: Text(
              'alinakhan56@gmail.com',
              style: TextStyle(fontSize: 15),
            )),
        DrawerList(text: 'Categories', icon: Icons.category, onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
        },),
        DrawerList(text: 'Favourites', icon: Icons.favorite_border,  onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>FavAds()));
        },),
        DrawerList(text: 'My Ads', icon: Icons.add_box, onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAds()));
        },),
        DrawerList(text: 'Chats', icon: Icons.message, onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
        },),
        DrawerList(text: 'Settings', icon: Icons.settings,  onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
        },),
        DrawerList(text: 'Contact', icon: Icons.phone, onTap: null,),
        DrawerList(text: 'Logout', icon: Icons.logout, onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()));
        },),
      ],
    ),
  );
}



class DrawerList extends StatelessWidget {
  final IconData icon;
  final String text;
  final onTap;

  DrawerList({required this.icon, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
      icon,
        color: Color.fromRGBO(125, 173, 247, 1),
        size: 30,
      ),
      title: Text(text, style: TextStyle(fontSize: 20)),
      onTap: onTap
    );
  }
}