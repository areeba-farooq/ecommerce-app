import 'package:dubuz_app/Screens/Location/searchBar.dart';
import 'package:dubuz_app/Screens/Search%20Results/search_results.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult()));
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text('Location', style: TextStyle(
            color: Colors.black,
            fontSize: 22
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
            SizedBox(height: 20,),
            Container(
              height: 800,
              width: double.infinity,
              color: Colors.white,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
