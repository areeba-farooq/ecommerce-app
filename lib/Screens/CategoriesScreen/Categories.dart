import 'dart:convert';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Sub-Categories/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Map<String, dynamic>? _map;
List? data;

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Future fetchData() async {
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
    fetchData();
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
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'Categories',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: data == null ? 0 : data!.length,
            itemBuilder: (BuildContext context, index) {
              return Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      height: 50,
                      alignment: Alignment.centerLeft,
                      child: Image.network(data![index]['picture'].toString())),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SubCategory()));
                            },
                            child: Text(
                              data![index]["name"].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
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
                ],
              );
            }));
  }
}
