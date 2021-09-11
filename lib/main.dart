import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Profile/myProfile.dart';
import 'package:flutter/material.dart';

import 'Screens/Account Setting/settings.dart';
import 'Screens/All Reviews/rating.dart';
import 'Screens/All Reviews/reviews.dart';
import 'Screens/CategoriesScreen/Categories.dart';
import 'Screens/Chats/ChatScreen.dart';
import 'Screens/EditProfile/edit_profile.dart';
import 'Screens/FavouriteAds/FavAds.dart';
import 'Screens/Featured Ads/featuredAds.dart';
import 'Screens/Hidden Ads/hiddenAds.dart';
import 'Screens/Login Screen/login_screen.dart';
import 'Screens/My Account/myAccount.dart';
import 'Screens/MyAds/myAds.dart';
import 'Screens/Pending Ads/pendingAds.dart';
import 'Screens/Resubmit Ads/resubmitAds.dart';
import 'Screens/Search Results/Filter Screen/Filter.dart';
import 'Screens/Search Results/search_results.dart';
import 'Screens/Sub-Categories/subCategory.dart';
import 'Screens/Welcome Screen/welcome.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2962D1),
        accentColor: Color(0xFFF3F3F3),
      ),
      home: Reviews(),

));