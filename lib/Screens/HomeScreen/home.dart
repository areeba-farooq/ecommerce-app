import 'package:dubuz_app/Screens/HomeScreen/HomeTrendingAds/HomeTrendingCards.dart';
import 'package:dubuz_app/Screens/HomeScreen/HomeTrendingAds/trendingAds.dart';
import 'package:dubuz_app/Screens/HomeScreen/Notification%20SCreen/Notification_Screen.dart';
import 'package:flutter/material.dart';
import '../AdContainer.dart';
import 'CityDropDownList.dart';
import 'HomeFeaturedAds/homeFeaturedCards.dart';
import 'drawer.dart';
import 'HomeFeaturedAds/featuredAds.dart';
import 'heading.dart';
import 'homecategoryIcons/HomeCategoryIconsContainer.dart';
import 'searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [buildHeading(), CityDropDown()],
            ),
            SearchBar(),
            SizedBox(
              height: 20,
            ),
            HomeCategoryIconsContainer(),
            SizedBox(
              height: 20,
            ),
            FeaturedAds(),
            SizedBox(
              height: 15,
            ),
            HomeFeaturedCards(),
            SizedBox(height: 30,),
            buildAdContainer(),
            SizedBox(height: 30,),
            TrendingAds(),
            SizedBox(
              height: 15,
            ),
            HomeTrendingCards(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
