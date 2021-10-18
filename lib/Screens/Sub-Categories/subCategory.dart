import 'dart:convert';

import 'package:dubuz_app/Screens/CategoriesScreen/Categories.dart';
import 'package:flutter/material.dart';
import '../HomeScreen/home.dart';
import 'package:http/http.dart' as http;

Map<String, dynamic>? _map;
List? data;

class SubCategory extends StatefulWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {

  Future fetchSubCats() async {
    final response =
        await http.post(Uri.parse('https://dubuz.com/api/categories'));
    if (response.statusCode == 200) {
      setState(() {
        _map = json.decode(response.body);
        data = _map!['data'];
      });
    }
  }

  @override
  void initState() {
    fetchSubCats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          elevation: 0.0,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'Motors',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data == null ? 0 : data!.length,
            itemBuilder: (BuildContext context, index) {
              var subCats = data![index]['subCats'];
               return ListView.builder(
                   shrinkWrap: true,
                   itemCount: subCats == null ? 0 : subCats!.length,
                   itemBuilder: (context, i) {
                     return Row(
                         children: [
                           Container(
                             margin: const EdgeInsets.symmetric(
                                 horizontal: 20, vertical: 20),
                             height: 50,
                             alignment: Alignment.centerLeft,
                             child: Image.network(
                               subCats![i]['picture'].toString(),
                             ),
                           ),
                           SizedBox(width: 20,),
                           Expanded(
                             child: Container(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SizedBox(
                                     height: 20.0,
                                   ),
                                   Text(
                                     subCats![i]["name"].toString(),
                                     style: TextStyle(fontSize: 20),
                                   ),
                                   SizedBox(
                                     height: 20,
                                   ),
                                   Divider(color: Colors.grey,),
                                   SizedBox(
                                     height: 10,
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                               margin: const EdgeInsets.symmetric(horizontal: 10),
                               child: Icon(Icons.arrow_forward_ios))
                         ]);
                   });
            }));
  }
}
