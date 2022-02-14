import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:http/http.dart';

class CategoriesResponse {
  List<Data> data;
  CategoriesResponse({required this.data});

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      var tagObjsJson = json['data'] as List;
      List<Data> _tags =
      tagObjsJson.map((tagJson) => Data.fromJson(tagJson)).toList();
      return CategoriesResponse(data: _tags);
    }
    return CategoriesResponse(data: []);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
}

class Data {
  late int id;
  late String name;
  late String slug;
  late Null description;
  late String picture;
  late String translationLang;
  late List<SubCats> subCats;

  Data(
      {required this.id,
        required this.name,
        required this.slug,
        this.description,
        required this.picture,
        required this.translationLang,
        required this.subCats});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    picture = json['picture'];
    translationLang = json['translation_lang'];
    if (json['subCats'] != null) {
      subCats = <SubCats>[];
      json['subCats'].forEach((v) {
        subCats.add(new SubCats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['picture'] = this.picture;
    data['translation_lang'] = this.translationLang;
    data['subCats'] = this.subCats.map((v) => v.toJson()).toList();
    return data;
  }
}

class SubCats {
  late int id;
  late String name;
  late String slug;
  late Null description;
  late String picture;
  late String translationLang;

  SubCats(
      {required this.id,
        required this.name,
        required this.slug,
        this.description,
        required this.picture,
        required this.translationLang});

  SubCats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    picture = json['picture'];
    translationLang = json['translation_lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['picture'] = this.picture;
    data['translation_lang'] = this.translationLang;
    return data;
  }
}

class ExpansionCategory extends StatefulWidget {
  ExpansionCategory({Key? key,}) : super(key: key);

  @override
  _ExpansionCategoryState createState() => _ExpansionCategoryState();
}

class _ExpansionCategoryState extends State<ExpansionCategory> {

  Future<List<Data>> getCategories() async {
    final String postsURL = "https://dubuz.com/api/categories";
    print("response ");
    Response res = await post(
      Uri.parse(postsURL),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      },
    );
    print("response ${res.statusCode} ");
    if (res.statusCode == 200) {
      try {
        print("List :${res.body}");
        //assuming this json returns an array of signupresponse objects
        CategoriesResponse complexTutorial =
        CategoriesResponse.fromJson(jsonDecode(res.body));

        print(complexTutorial);

        // List<Data> list = parsedList.map((val) => Data.fromJson(val)).toList();

        return complexTutorial.data;
      } catch (e) {
        print("execption : ${e.toString()}");
      }
    } else {
      print("ex ${res.statusCode}");
      // throw "Unable to retrieve posts.";
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body:  FutureBuilder(
        future: getCategories(),
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
          if (snapshot.hasData) {
            List<Data>? posts = snapshot.data;
            return posts != null
                ? ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: posts.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                Data data = posts[index];
                var name = data.name;
                var picture = data.picture;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                      child: ExpansionTileCard(
                        title: Row(
                          children: [
                            Image.network("$picture", width: 40, height: 40,),
                            SizedBox(width: 20,),
                            Expanded(
                              child: Text("$name", overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                        children: [
                          SizedBox(height: 20,),
                          ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: data.subCats.length,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                SubCats subCataData = data.subCats[index];
                                var subCatname = subCataData.name;
                                var subCatpic = subCataData.picture;
                                return Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Image.network("$subCatpic", width: 20, height: 20,),
                                    ),
                                    SizedBox(width: 30,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "$subCatname",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    )
                                  ],
                                );
                              }),
                        ],
                      ),
                    ),

                  ],
                );
              },
            )
                : Container();
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}




