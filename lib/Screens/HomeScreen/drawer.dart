import 'package:flutter/material.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        userAccountsDrawerHeader(),
        DrawerList(text: 'Categories', icon: Icons.category, onTap: null,),
        DrawerList(text: 'Favourites', icon: Icons.favorite_border, onTap: null,),
        DrawerList(text: 'My Ads', icon: Icons.add_box, onTap: null,),
        DrawerList(text: 'Chats', icon: Icons.message, onTap: null,),
        DrawerList(text: 'Settings', icon: Icons.settings, onTap: null,),
        DrawerList(text: 'Contact', icon: Icons.phone, onTap: null,),
        DrawerList(text: 'Logout', icon: Icons.logout, onTap: null,),
      ],
    ),
  );
}

UserAccountsDrawerHeader userAccountsDrawerHeader() {
  return UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('images/profile4.jpg'),
          ),
          accountName: Text(
            'Alina Khan',
            style: TextStyle(fontSize: 20),
          ),
          accountEmail: Text(
            'alinakhan56@gmail.com',
            style: TextStyle(fontSize: 15),
          ));
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