import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/HomeScreen/searchbar.dart';
import 'package:flutter/material.dart';

class Countries extends StatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text('Country', style: TextStyle(
            color: Colors.black,
            fontSize: 22
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           SearchBar(),
            SizedBox(height: 20,),
            Container(
              height: 700,
              width: double.infinity,
              color: Colors.white,
              child:  ListView(
                  children:
                  ListTile.divideTiles(
                      context: context,
                      tiles: [
                        Country(img: 'assets/city/abkhazia.png', name: 'Abkhazia',),
                        Country(img: 'assets/city/afghanistan.png', name: 'Afghanistan',),
                        Country(img: 'assets/city/aland-islands.png', name: 'Aland-islands',),
                        Country(img: 'assets/city/albania.png', name: 'Albania',),
                        Country(img: 'assets/city/algeria.png', name: 'Algeria',),
                        Country(img: 'assets/city/american-samoa.png', name: 'America',),
                        Country(img: 'assets/city/andorra.png', name: 'Andorra',),
                        Country(img: 'assets/city/angola.png', name: 'Angola',),
                        Country(img: 'assets/city/anguilla.png', name: 'Anguilla',),
                        Country(img: 'assets/city/antigua-and-barbuda.png', name: 'Antigua',),
                        Country(img: 'assets/city/argentina.png', name: 'Argentina',),
                        Country(img: 'assets/city/armenia.png', name: 'Armenia',),
                        Country(img: 'assets/city/australia.png', name: 'Australia',),
                        Country(img: 'assets/city/azerbaijan.png', name: 'Azerbaijan',),
                        Country(img: 'assets/city/austria.png', name: 'Austria',),
                        Country(img: 'assets/city/azores-islands.png', name: 'Azores-Islands',),
                        Country(img: 'assets/city/bahamas.png', name: 'Bahamas',),
                        Country(img: 'assets/city/bahrain.png', name: 'Bahrain',),
                        //************************************************************
                        Country(img: 'assets/city/balearic-islands.png', name: 'Balearic-Island',),
                        Country(img: 'assets/city/bangladesh.png', name: 'Bangladesh',),
                        Country(img: 'assets/city/barbados.png', name: 'Barbados',),
                        Country(img: 'assets/city/basque-country.png', name: 'Basque',),
                        Country(img: 'assets/city/belarus.png', name: 'Belarus',),
                        Country(img: 'assets/city/belgium.png', name: 'Belgium',),
                        Country(img: 'assets/city/belize.png', name: 'Belize',),
                        Country(img: 'assets/city/benin.png', name: 'Benin',),
                        Country(img: 'assets/city/bhutan.png', name: 'Bhutan',),
                        Country(img: 'assets/city/bermuda.png', name: 'Bermuda',),
                        Country(img: 'assets/city/bolivia.png', name: 'Bolivia',),
                        Country(img: 'assets/city/bonaire.png', name: 'Bonaire',),
                        Country(img: 'assets/city/botswana.png', name: 'Botswana',),
                        Country(img: 'assets/city/brazil.png', name: 'Brazil',),
                        Country(img: 'assets/city/british-columbia.png', name: 'British-Columbia',),
                        Country(img: 'assets/city/british-indian-ocean-territory.png', name: 'British-Indian-Ocean-Territory',),
                        Country(img: 'assets/city/brunei.png', name: 'Brunei',),
                        Country(img: 'assets/city/bulgaria.png', name: 'Bulgaria',),

                      ]).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Country extends StatelessWidget {
  final String img;
  final String name;
  Country({required this.name, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(img),
        ),
        title: Text(name, style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}
