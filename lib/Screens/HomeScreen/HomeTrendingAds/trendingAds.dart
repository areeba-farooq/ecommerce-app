import 'package:dubuz_app/Screens/Trending%20Ads/trendingAds.dart';
import 'package:flutter/material.dart';


class TrendingAds extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text('Trending Ads', style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),),
        ),
        TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TrendingAdsList()));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('View More'),
          ),

        )
      ],
    );
  }
}