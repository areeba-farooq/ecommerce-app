import 'package:dubuz_app/Screens/Chats/ChatScreen.dart';
import 'package:dubuz_app/Screens/FavouriteAds/FavAds.dart';
import 'package:dubuz_app/Screens/HomeScreen/HomeTrendingAds/HomeTrendingCards.dart';
import 'package:dubuz_app/Screens/HomeScreen/HomeTrendingAds/trendingAds.dart';
import 'package:dubuz_app/Screens/HomeScreen/Notification%20SCreen/Notification_Screen.dart';
import 'package:dubuz_app/Screens/Post%20Free%20Ad/post_ad.dart';
import 'package:dubuz_app/Screens/Profile/myProfile.dart';
import 'package:flutter/cupertino.dart';
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
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    FavAds(),
    ChatScreen(),
    Profile()
  ];

  Widget currentScreen = HomePage();


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
              children: [
                buildHeading(), CityDropDown()],
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















