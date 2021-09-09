import 'package:flutter/material.dart';

import '../HomeScreen/home.dart';
import 'FavAdsCards.dart';

class FavAds extends StatelessWidget {
  const FavAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text('Favourite Ads', style: TextStyle(
            color: Colors.black,
            fontSize: 22
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 180,
              width: 411,
              decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                 Stack(
                   children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                       child: Container(
                         margin: EdgeInsets.symmetric(horizontal: 8),
                         height: 160,
                         width: 200,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           image: DecorationImage(
                               image: AssetImage('assets/ads/img3.jpg'),
                               fit: BoxFit.cover
                           ),
                           borderRadius: BorderRadius.circular(15),

                         ),
                       ),
                     ),
                     Positioned(
                       top: 10,
                       right: 20,
                         child: Icon(Icons.favorite, color: Colors.red, size: 30,))
                   ],
                 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nikon Camera New Mo..', style: TextStyle(
                        fontSize: 18
                      ),),
                      SizedBox(height: 15,),
                      Text('\$120', style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.grey,),
                          SizedBox(width: 5,),
                          Text('Khargarh Mumbai', style: TextStyle(
                            color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.blueGrey,),
                          SizedBox(width: 5,),
                          Text('5 hours ago', style: TextStyle(
                            color: Colors.blueGrey
                          ),),
                        ],
                      ),

                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
