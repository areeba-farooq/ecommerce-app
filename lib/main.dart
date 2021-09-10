import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Profile/myProfile.dart';
import 'package:flutter/material.dart';

import 'Screens/Account Setting/settings.dart';
import 'Screens/CategoriesScreen/Categories.dart';
import 'Screens/Chats/ChatScreen.dart';
import 'Screens/EditProfile/edit_profile.dart';
import 'Screens/FavouriteAds/FavAds.dart';
import 'Screens/Featured Ads/featuredAds.dart';
import 'Screens/Hidden Ads/hiddenAds.dart';
import 'Screens/My Account/myAccount.dart';
import 'Screens/MyAds/myAds.dart';
import 'Screens/Pending Ads/pendingAds.dart';
import 'Screens/Resubmit Ads/resubmitAds.dart';
import 'Screens/Sub-Categories/subCategory.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2962D1),
        accentColor: Color(0xFFF3F3F3),
      ),
      home: Profile(),

));