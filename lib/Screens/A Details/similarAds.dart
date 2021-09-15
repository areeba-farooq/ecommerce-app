import 'package:dubuz_app/Screens/A%20Details/detailScreen.dart';
import 'package:flutter/material.dart';

class SimilarADs extends StatelessWidget {
  final String text;
  final img;
  final IconData icon;
  final String location;
  final String price;
  final onTap;

  SimilarADs(
      {this.onTap,
      required this.img,
      required this.text,
      required this.icon,
      required this.location,
      required this.price});

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
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 180,
                height: 130,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    location,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                price,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SimilarAdsCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          SimilarADs(
            img: 'assets/ads/img2.jpg',
            text: 'Nikon Camera New..',
            icon: Icons.location_on_outlined,
            location: 'Khargarh Mumbai',
            price: '\$120',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdDetails()));
            },
          ),
          SizedBox(
            width: 10,
          ),
          SimilarADs(
            img: 'assets/ads/img3.jpg',
            text: 'Sun Glasses',
            icon: Icons.location_on_outlined,
            location: 'UP, India',
            price: '\$100',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdDetails()));
            },
          ),
          SizedBox(
            width: 10,
          ),
          SimilarADs(
            img: 'assets/ads/img4.jpg',
            text: 'Iphone x Pro',
            icon: Icons.location_on_outlined,
            location: 'Punjab India',
            price: '\$9999',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdDetails()));
            },
          ),
          SizedBox(
            width: 10,
          ),
          SimilarADs(
            img: 'assets/ads/img5.jpg',
            text: 'Audi 567xT Car',
            icon: Icons.location_on_outlined,
            location: 'Mumbai',
            price: '\$304',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdDetails()));
            },
          ),
          SizedBox(
            width: 10,
          ),
          SimilarADs(
            img: 'assets/ads/img6.jpg',
            text: 'Refurnished Chair',
            icon: Icons.location_on_outlined,
            location: 'Ludhyana',
            price: '\$890',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdDetails()));
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
