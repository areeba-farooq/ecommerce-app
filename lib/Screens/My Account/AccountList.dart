import 'package:dubuz_app/Screens/Expire%20Ads/expireAds.dart';
import 'package:dubuz_app/Screens/FavouriteAds/FavAds.dart';
import 'package:dubuz_app/Screens/Hidden%20Ads/hiddenAds.dart';
import 'package:dubuz_app/Screens/MyAds/myAds.dart';
import 'package:dubuz_app/Screens/Pending%20Ads/pendingAds.dart';
import 'package:dubuz_app/Screens/Resubmit%20Ads/resubmitAds.dart';
import 'package:flutter/material.dart';

class AccountList extends StatelessWidget {
  final IconData icon;
  final String text;
  final onTap;

  AccountList({required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: ListTile(
          leading: Icon(icon, size: 30, color: Theme.of(context).primaryColor,),
          title: Text(text, style: TextStyle(
              fontSize: 20
          ),),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
        ),
      ),
    );
  }
}


class AccountContainer extends StatelessWidget {
  const AccountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 10),
      height: 630,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
          children:
          ListTile.divideTiles(
              context: context,
              tiles: [
                AccountList(icon: Icons.add_box, text: 'My Ads',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAds()));
                },),
                AccountList(icon: Icons.favorite_border, text: 'Favourite Ads',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FavAds()));
                },),
                AccountList(icon: Icons.access_time, text: 'Pending Ads',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PendingAds()));
                },),
                AccountList(icon: Icons.visibility_off_sharp, text: 'Hidden Ads',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HiddenAds()));
                },),
                AccountList(icon: Icons.info_outline, text: 'Expire Ads',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpireAds()));
                },),
                AccountList(icon: Icons.more_time_sharp, text: 'Resubmit Ads',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResubmitAds()));
                },),
                AccountList(icon: Icons.settings, text: 'Account Settings',onTap: null),
                AccountList(icon: Icons.logout, text: 'Logout',onTap: null),

              ]
          ).toList()
      ),
    );
  }
}

