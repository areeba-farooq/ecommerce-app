import 'package:dubuz_app/Screens/Search%20Results/search_results.dart';
import 'package:flutter/material.dart';
class SubCategoryList extends StatelessWidget {
  final String text;
  final onTap;

  SubCategoryList({required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          title: Text(text, style: TextStyle(
              fontSize: 20
          ),),
        ),
      ),
    );
  }
}

class SubCategoryListContainer extends StatelessWidget {
  const SubCategoryListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 10),
      height: 400,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children:
          ListTile.divideTiles(
              context: context,
              tiles: [
                SubCategoryList(text: 'Cars & Bikes', onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult()));
                },),
                SubCategoryList(text: 'Cars',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult()));
                }),
                SubCategoryList(text: 'Other Vehicles',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult()));
                }),
                SubCategoryList(text: 'Spare Part -Accessories',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult()));
                }),
                SubCategoryList(text: 'Commercial Vehicles',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult()));
                }),

              ]
          ).toList()
      ),
    );
  }
}



