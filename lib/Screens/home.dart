import 'package:dubuz_app/Screens/HomeScreen/HomeTrendingAds/HomeTrendingCards.dart';
import 'package:dubuz_app/Screens/HomeScreen/HomeTrendingAds/trendingAds.dart';
import 'package:flutter/material.dart';
import 'AdContainer.dart';
import 'HomeScreen/CityDropDownList.dart';
import 'HomeScreen/HomeFeaturedAds/homeFeaturedCards.dart';
import 'HomeScreen/drawer.dart';
import 'HomeScreen/HomeFeaturedAds/featuredAds.dart';
import 'HomeScreen/heading.dart';
import 'HomeScreen/homecategoryIcons/HomeCategoryIconsContainer.dart';
import 'HomeScreen/searchbar.dart';

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
            onPressed: () {},
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
