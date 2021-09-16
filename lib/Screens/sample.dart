import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selected;
  List<Map> _myJson = [
    {"id": '1', "image": "assets/city/abkhazia.png", "name": "Abkhazia"},
    {"id": '2', "image": "assets/city/afghanistan.png", "name": "Afghanistan"},
    {"id": '3', "image": "assets/city/albania.png", "name": "Albania"},
    {"id": '4', "image": "assets/city/algeria.png", "name": "Algeria"},
    {
      "id": '5',
      "image": "assets/city/andorra.png",
      "name": "Andorra"
    },
    {"id": '6', "image": "assets/city/angola.png", "name": "Angola"},
    {
      "id": '7',
      "image": "assets/city/anguilla.png",
      "name": "Anguilla"
    },
    {"id": '8', "image": "assets/city/argentina.png", "name": "Argentina"},
    {"id": '9', "image": "assets/city/armenia.png", "name": "Armenia"},
    {
      "id": '10',
      "image": "assets/city/aruba.png",
      "name": "Aruba"
    },
    {"id": '11', "image": "assets/city/australia.png", "name": "Australia"},
    {
      "id": '12',
      "image": "assets/city/austria.png",
      "name": "Austria"
    },
    {
      "id": '13',
      "image": "assets/city/azerbaijan.png",
      "name": "Azerbaijan"
    },
    {"id": '14', "image": "assets/city/bahamas.png", "name": "Bahamas"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        height: 40,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
        ),
        child: DropdownButton(
          icon: const Icon(Icons.arrow_drop_down_outlined),
          iconSize: 24,
          style: const TextStyle(color:Colors.grey),
          value: _selected,
          onChanged: (String? newValue) {
            setState(() {
              _selected = newValue!;
            });

            print(_selected);
          },
          underline: SizedBox(),
          hint: Text('India', style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),),
          items: _myJson.map((Map map) {
            return DropdownMenuItem<String>(
              value: map["id"].toString(),
              // value: _mySelection,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    map["image"],
                    width: 25,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(map["name"])),
                ],
              ),
            );
          }).toList(),
        ),
      )
    );
  }
}
