import 'dart:convert';

import 'package:dubuz_app/Screens/CategoriesScreen/Categories.dart';
import 'package:dubuz_app/Screens/CategoriesScreen/subcategory_view.dart';
import 'package:dubuz_app/Screens/Sub-Categories/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Map<String, dynamic>? _map;
List? data;
class HomeCategoryIconsContainer extends StatefulWidget {

  @override
  State<HomeCategoryIconsContainer> createState() => _HomeCategoryIconsContainerState();
}

class _HomeCategoryIconsContainerState extends State<HomeCategoryIconsContainer> {

  Future fetchCategory() async {
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
    fetchCategory();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:  ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: data == null ? 0 : data!.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Categories()));
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 20),
                        height: 35,
                        alignment: Alignment.centerLeft,
                        child: Image.network(data![index]['picture'].toString())),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Categories()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Text(
                          data![index]["name"].toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}