import 'package:flutter/material.dart';
class SubCategoryList extends StatelessWidget {
  final String text;
  final onTap;

  SubCategoryList({required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        title: Text(text, style: TextStyle(
            fontSize: 20
        ),),
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
          children:
          ListTile.divideTiles(
              context: context,
              tiles: [
                SubCategoryList(text: 'Cars & Bikes',),
                SubCategoryList(text: 'Cars',),
                SubCategoryList(text: 'Other Vehicles',),
                SubCategoryList(text: 'Spare Part -Accessories',),
                SubCategoryList(text: 'Commercial Vehicles',),

              ]
          ).toList()
      ),
    );
  }
}



