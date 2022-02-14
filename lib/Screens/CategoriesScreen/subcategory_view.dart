import 'package:flutter/material.dart';

import 'Categories.dart';

class subcategoryView extends StatefulWidget {
   subcategoryView({Key? key, required this.subCatViewList, required this.catName}) : super(key: key);
  final List subCatViewList;
  Data catName;

  @override
  _subcategoryViewState createState() => _subcategoryViewState();
}

class _subcategoryViewState extends State<subcategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          widget.catName.name,
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: widget.subCatViewList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            SubCats subCataData = widget.subCatViewList[index];
            var subCatname = subCataData.name;
            var subCatpic = subCataData.picture;
            return Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                    child: Image.network("$subCatpic", width: 30, height: 30,)),
                SizedBox(width: 30,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "$subCatname", overflow: TextOverflow.fade,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 20, color: Colors.black),

                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
