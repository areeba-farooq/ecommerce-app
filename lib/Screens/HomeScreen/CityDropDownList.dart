
import 'package:flutter/material.dart';

class CityDropDown extends StatefulWidget {

  @override
  _CityDropDownState createState() => _CityDropDownState();
}

class _CityDropDownState extends State<CityDropDown> {
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
    {"id": '15', "image": "assets/city/bahrain.png", "name": "Bahrain"},
    {"id": '16', "image": "assets/city/balearic-islands.png", "name": "Balearic"},
    {"id": '17', "image": "assets/city/bangladesh.png", "name": "Bangladesh"},
    {"id": '18', "image": "assets/city/barbados.png", "name": "Barbados"},
    {"id": '19', "image": "assets/city/belarus.png", "name": "Belarus"},
    {"id": '20', "image": "assets/city/belgium.png", "name": "Belgium"},
    {"id": '21', "image": "assets/city/belize.png", "name": "Belize"},
    {"id": '22', "image": "assets/city/benin.png", "name": "Benin"},
    {"id": '23', "image": "assets/city/bermuda.png", "name": "Bermuda"},
    {"id": '24', "image": "assets/city/bhutan.png", "name": "Bhutan"},
    {"id": '25', "image": "assets/city/bolivia.png", "name": "Bolivia"},
    {"id": '26', "image": "assets/city/bonaire.png", "name": "Bonaire"},
    {"id": '27', "image": "assets/city/botswana.png", "name": "Botswana"},
    {"id": '28', "image": "assets/city/brazil.png", "name": "Brazil"},
    {"id": '29', "image": "assets/city/brunei.png", "name": "Brunei"},
    {"id": '30', "image": "assets/city/bulgaria.png", "name": "Bulgaria"},
    {"id": '31', "image": "assets/city/burkina-faso.png", "name": "Burkina"},
    {"id": '32', "image": "assets/city/burundi.png", "name": "Burundi"},
    {"id": '33', "image": "assets/city/cambodia.png", "name": "Cambodia"},
    {"id": '34', "image": "assets/city/cameroon.png", "name": "Cameroon"},
    {"id": '35', "image": "assets/city/canada.png", "name": "Canada"},
    {"id": '36', "image": "assets/city/canary-islands.png", "name": "Canary"},
    {"id": '37', "image": "assets/city/cape-verde.png", "name": "CapeVerde"},
    {"id": '38', "image": "assets/city/cayman-islands.png", "name": "Cayman"},
    {"id": '39', "image": "assets/city/ceuta.png", "name": "Ceuta"},
    {"id": '40', "image": "assets/city/chad.png", "name": "Chad"},
    {"id": '41', "image": "assets/city/chile.png", "name": "Chile"},
    {"id": '42', "image": "assets/city/china.png", "name": "China"},
    {"id": '43', "image": "assets/city/christmas-island.png", "name": "Christmas"},
    {"id": '44', "image": "assets/city/cocos-island.png", "name": "Cocos"},
    {"id": '45', "image": "assets/city/colombia.png", "name": "Colombia"},
    {"id": '46', "image": "assets/city/comoros.png", "name": "Comoros"},
    {"id": '47', "image": "assets/city/cook-islands.png", "name": "Cook"},
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey)
      ),
      child: DropdownButton(
        icon: const Icon(Icons.arrow_drop_down_outlined),
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
                    child: Text(map["name"], style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}


