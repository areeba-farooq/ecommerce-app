import 'dart:convert';

import 'package:dubuz_app/Screens/HomeScreen/homecategoryIcons/HomeCategoryIconsContainer.dart';
import 'package:dubuz_app/Screens/Location/locationScreen.dart';
import 'package:dubuz_app/Screens/Post%20Free%20Ad/postCategory.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';

class AdField extends StatefulWidget {
  const AdField({Key? key}) : super(key: key);

  @override
  _AdFieldState createState() => _AdFieldState();
}

class _AdFieldState extends State<AdField> {

  // List<String> data = ['Option#1', 'Option#2', 'Option#3', 'Option#4']; // Option 2
  //  String _selectedData = 'Option#1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Ads Details',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostCategory()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocationScreen()));
              },
              icon: Icon(Icons.location_on_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               HomeCategoryIconsContainer(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add_to_photos_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Post Free Ads',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.8,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Title',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 20))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'wait';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Title',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20, top: 10),
                child: RichText(
                  text: TextSpan(
                      text: 'Pictures',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 20))
                      ]),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.images),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      minimumSize: Size(380, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20, top: 10),
                child: RichText(
                  text: TextSpan(
                      text: 'Sub-Category',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 20))
                      ]),
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(left: 16),
              //   padding: const EdgeInsets.only(left: 16, right: 16),
              //   height: 50,
              //   width: 380,
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.grey),
              //       borderRadius: BorderRadius.circular(5)
              //   ),
              //   child: DropdownButton(
              //     isExpanded: true,
              //     value: _selectedData,
              //     onChanged: (String? newValue) {
              //       setState(() {
              //         _selectedData = newValue!;
              //       });
              //     },
              //     items: data.map((location) {
              //       return DropdownMenuItem(
              //         child: new Text(location),
              //         value: location,
              //       );
              //     }).toList(),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20, top: 10),
                child: RichText(
                  text: TextSpan(
                      text: 'Description',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 20))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  minLines: 8,
                  // any number you need (It works as the rows for the textarea)
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Describe what makes your ad unique..',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
