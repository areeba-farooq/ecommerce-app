import 'package:dubuz_app/Screens/CategoriesScreen/Categories.dart';
import 'package:dubuz_app/Screens/Sub-Categories/subCategory.dart';
import 'package:flutter/material.dart';
import 'Icons.dart';

class HomeCategoryIconsContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryIcons(
                  img: 'assets/icons/traffic-jam.png',
                  text: 'Cars & Bikes',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },

                ),
                CategoryIcons(
                  img: 'assets/icons/tv.png',
                  text: 'Electronics...',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },
                ),
                CategoryIcons(
                  img: 'assets/icons/home-page.png',
                  text: 'Home & LifeS..',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },
                ),
                CategoryIcons(
                  img: 'assets/icons/real-estate.png',
                  text: 'Real Estate',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryIcons(
                    text: 'Jobs',
                    img: 'assets/icons/find-matching-job.png',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },
                ),
                CategoryIcons(
                    text: 'Services', img: 'assets/icons/services.png',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },),
                CategoryIcons(
                    text: 'Entertain..',
                    img: 'assets/icons/dancing.png',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
                  },),
                CategoryIcons(
                  text: 'View All',
                  img: 'assets/icons/icons8-view-more-50.png',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                  },
                ),
              ],
            )
          ],
        ));
  }
}