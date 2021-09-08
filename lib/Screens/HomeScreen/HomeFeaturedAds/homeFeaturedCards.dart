import 'package:flutter/material.dart';


class FeaturedCards extends StatelessWidget {
  final String text;
  final img;
  final IconData icon;
  final String loctaion;
  final String price;

  FeaturedCards({required this.img, required this.text, required this.icon, required this.loctaion, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 180,
              height: 130,
              child: Image.asset(img, fit: BoxFit.cover,),
            ),
          ),
          SizedBox(height: 8,),
          Text(text, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.only(left: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.grey, size: 18,),
                SizedBox(width: 5,),
                Text(loctaion, style: TextStyle(
                    color: Colors.grey
                ),),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Text(price, style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),)
        ],
      ),
    );
  }
}


class HomeFeaturedCards extends StatelessWidget {
  const HomeFeaturedCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 10,),
          FeaturedCards(img: 'assets/ads/img2.jpg',text: 'Nikon Camera New..', icon: Icons.location_on_outlined, loctaion: 'Khargarh Mumbai', price: '\$120',),
          SizedBox(width: 10,),
          FeaturedCards(img: 'assets/ads/img2.jpg',text: 'Nikon Camera New..', icon: Icons.location_on_outlined, loctaion: 'Khargarh Mumbai', price: '\$120',),
          SizedBox(width: 10,),
          FeaturedCards(img: 'assets/ads/img2.jpg',text: 'Nikon Camera New..', icon: Icons.location_on_outlined, loctaion: 'Khargarh Mumbai', price: '\$120',),
          SizedBox(width: 10,),
          FeaturedCards(img: 'assets/ads/img2.jpg',text: 'Nikon Camera New..', icon: Icons.location_on_outlined, loctaion: 'Khargarh Mumbai', price: '\$120',),
          SizedBox(width: 10,),
          FeaturedCards(img: 'assets/ads/img2.jpg',text: 'Nikon Camera New..', icon: Icons.location_on_outlined, loctaion: 'Khargarh Mumbai', price: '\$120',),
          SizedBox(width: 10,),


        ],
      ),
    );
  }
}

