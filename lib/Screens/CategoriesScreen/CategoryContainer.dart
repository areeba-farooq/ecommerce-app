import 'package:dubuz_app/Screens/Sub-Categories/subCategory.dart';
import 'package:flutter/material.dart';

Container buildCategoryContainer(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(top: 10),
    height: 600,
    width: double.infinity,
    color: Colors.white,
    child: ListView(
        children:
        ListTile.divideTiles(
            context: context,
            tiles: [
              CategoryList(img: 'assets/icons/traffic-jam.png', text: 'Cars & Bikes', onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),

              CategoryList(img: 'assets/icons/tv.png', text: 'Electronics & Appliances',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),
              CategoryList(img: 'assets/icons/home-page.png', text: 'Home & LifeStyle',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),
              CategoryList(img: 'assets/icons/real-estate.png', text: 'Real Estate',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),
              CategoryList(img: 'assets/icons/find-matching-job.png', text: 'Jobs',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),
              CategoryList(img: 'assets/icons/services.png', text: 'Services',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),
              CategoryList(img: 'assets/icons/dancing.png', text: 'Entertainment',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),
              CategoryList(img: 'assets/icons/two-smartphones.png', text: 'Mobile & Tablets',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));
              },),

            ]
        ).toList()
    ),
  );
}



class CategoryList extends StatelessWidget {
  final img;
  final String text;
  final onTap;

  CategoryList({required this.text, required this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: Image.asset(img,width: 40, height: 40,),
          title: Text(text, style: TextStyle(
              fontSize: 20
          ),),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
        ),
      ),
    );
  }
}
