
import 'package:dubuz_app/Screens/Chats/ChatScreen.dart';
import 'package:dubuz_app/Screens/FavouriteAds/FavAds.dart';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Profile/myProfile.dart';
import 'package:dubuz_app/Screens/Search%20Results/Filter%20Screen/heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


enum AdType { Private, Professional }
enum Transmission { Automatic, Manual }
enum Premium { FreeAd, PremiumAd }

class PostAd extends StatefulWidget {
  const PostAd({Key? key}) : super(key: key);

  @override
  _PostAdState createState() => _PostAdState();
}

class _PostAdState extends State<PostAd> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  AdType type = AdType.Private;
  Premium premium = Premium.FreeAd;
  Transmission _transmission = Transmission.Automatic;

  TextEditingController _controller = TextEditingController();
  int currentTab = 4;
  Widget currentScreen = PostAd();
  final List<Widget> screens = [
    HomePage(),
    FavAds(),
    ChatScreen(),
    Profile()
  ];
  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
  }

  List<String> categories = [
    'Select any Category',
    'All Categories',
    'Cars & Bikes',
    'Electronics & Appliances',
    'Home & LifeStyle',
    'Real Estate',
    'Jobs',
    'Services',
    'Entertainment',
    'Mobile & Tablets',
  ];
  late String selectedCategory = 'Select any Category';

  List<String> subCategories = [
    'Select any Sub category',
    '# Option 1',
    '# Option 2',
    '# Option 3',
    '# Option 4',
    '# Option 5',
    '# Option 6',
  ];
  late String selectedSubCategory = 'Select any Sub category';

  List<String> brandName = [
    'Select any Brand Name',
    'Audi',
    'Maruti',
    'Civic',
    'Honda',
    'Corolla',
    'Leyana',
  ];
  late String selectedBrandName = 'Select any Brand Name';
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  List<String> cityName = [
    'Select any City Name',
    'Karachi',
    'Lahore',
    'Islamabad',
    'Quetta',
    'Sialkot',
    'Multan',
  ];
  late String cityNames = 'Select any City Name';

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
            'Post Free Ad',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Ad Details',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Heading(
                      name: 'Categories',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: DropdownButton(
                        isExpanded: true,
                        value: selectedCategory,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCategory = newValue!;
                          });
                        },
                        items: categories.map((category) {
                          return DropdownMenuItem(
                            child: new Text(category),
                            value: category,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(name: 'Sub Categories'),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: DropdownButton(
                        isExpanded: true,
                        value: selectedSubCategory,
                        onChanged: (String? newVal) {
                          setState(() {
                            selectedSubCategory = newVal!;
                          });
                        },
                        items: subCategories.map((category) {
                          return DropdownMenuItem(
                            child: new Text(category),
                            value: category,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(
                      name: 'Ad Title',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: 'Title your Advertise',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 16, height: 2),

                            //to show hint text always with label text
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(
                      name: 'Description',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: 'Tell us more about your advertise',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 16, height: 2),

                            //to show hint text always with label text
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150, top: 3),
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            color: Theme.of(context).primaryColor,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add Photos',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black45),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 800,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading(name: 'Ad Type'),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Private',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: AdType.Private,
                        groupValue: type,
                        onChanged: (AdType? value) {
                          setState(() {
                            type = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Professional',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: AdType.Professional,
                        groupValue: type,
                        onChanged: (AdType? value) {
                          setState(() {
                            type = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(name: 'Brand Name'),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: DropdownButton(
                        isExpanded: true,
                        value: selectedBrandName,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedBrandName = newValue!;
                          });
                        },
                        items: brandName.map((brandName) {
                          return DropdownMenuItem(
                            child: new Text(brandName),
                            value: brandName,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: 'Year of Registration',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                letterSpacing: 0.5),
                            hintText: 'Year of Registration',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 15, height: 2),

                            //to show hint text always with label text
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(name: 'Transmission'),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Automatic',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: Transmission.Automatic,
                        groupValue: _transmission,
                        onChanged: (Transmission? value) {
                          setState(() {
                            _transmission = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Manual',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: Transmission.Manual,
                        groupValue: _transmission,
                        onChanged: (Transmission? value) {
                          setState(() {
                            _transmission = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(name: 'Features'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          activeColor: Colors.blue,
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        Text(
                          'GPS',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          activeColor: Colors.blue,
                          value: this.value1,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value1 = value!;
                            });
                          },
                        ),
                        Text(
                          'ABS',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          activeColor: Colors.blue,
                          value: this.value2,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value2 = value!;
                            });
                          },
                        ),
                        Text(
                          'Air Condition',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          activeColor: Colors.blue,
                          value: this.value3,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value3 = value!;
                            });
                          },
                        ),
                        Text(
                          'Security System',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading(name: 'Price'),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                '\$ Price',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                activeColor: Colors.blue,
                                value: this.value4,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.value4 = value!;
                                  });
                                },
                              ),
                              Text(
                                'Negotiate',
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Contact Information',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 650,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                            hintText: 'Add your contact number',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 16, height: 2),

                            //to show hint text always with label text
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(name: 'City'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: DropdownButton(
                        isExpanded: true,
                        value: cityNames,
                        onChanged: (String? newValue) {
                          setState(() {
                            cityNames = newValue!;
                          });
                        },
                        items: cityName.map((category) {
                          return DropdownMenuItem(
                            child: new Text(category),
                            value: category,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Heading(name: 'Location'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.white,
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: 'Tag',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                            hintText: 'Enter Tags separated by Commas',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 16, height: 2),

                            //to show hint text always with label text
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Make your Ad Premium (Optional)',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Free Ad',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: Premium.FreeAd,
                        groupValue: premium,
                        onChanged: (Premium? value) {
                          setState(() {
                            premium = value!;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'Your ad will go live after check by reviewer',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Premium',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: Premium.PremiumAd,
                        groupValue: premium,
                        onChanged: (Premium? value) {
                          setState(() {
                            premium = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                      ),
                      child: Center(
                        child: Text(
                          '(Recommended)',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                    },
                    child: Text(
                      'Post Ad',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 50),
                        padding: EdgeInsets.all(10),
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ))),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PostAd()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 0;
                          currentScreen = HomePage();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        });
                      }, icon: Icon(Icons.home_outlined,
                    color: currentTab == 0? Theme.of(context).primaryColor : Colors.grey,)),
                  SizedBox(width: 30,),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 1;
                          currentScreen = FavAds();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FavAds()));

                        });
                      }, icon: Icon(Icons.favorite_border,
                    color: currentTab == 1? Theme.of(context).primaryColor : Colors.grey,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 2;
                          currentScreen = ChatScreen();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));

                        });
                      }, icon: Icon(Icons.message,
                    color: currentTab == 2? Theme.of(context).primaryColor : Colors.grey,)),
                  SizedBox(width: 30,),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          currentTab = 3;
                          currentScreen = Profile();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));

                        });
                      }, icon: Icon(Icons.person_outline,
                    color: currentTab == 3? Theme.of(context).primaryColor : Colors.grey,)),
                  SizedBox(width: 20,),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
