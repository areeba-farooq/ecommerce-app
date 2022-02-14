import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/HomeScreen/homecategoryIcons/HomeCategoryIconsContainer.dart';
import 'package:dubuz_app/Screens/Location/locationScreen.dart';
import 'package:flutter/material.dart';

import 'adFields.dart';

class PostCategory extends StatelessWidget {
  const PostCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Post Free Ads', style: TextStyle(color: Colors.black, fontSize: 22),),
       leading: GestureDetector(
           onTap: () {
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => HomePage()));
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LocationScreen()));
            },
            icon: Icon(Icons.location_on_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              HomeCategoryIconsContainer(),
              SizedBox(height: 20,),
              Text('Post Free Ads', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500)),
              SizedBox(height: 10,),
              Text('Click your ad category to proceed', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.5)),
              SizedBox(height: 10,),
              Divider(color: Colors.grey, thickness: 0.5, endIndent: 10,indent: 10,),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdField()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border:  Border.all(color: Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/car.png', height: 40, width: 40,),
                          Text('Motors', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFFF25510),
                            letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border:  Border.all(color:  Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/home.png', height: 40, width: 40,),
                          Text('Property for sale', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xFFF25510),
                            letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border:  Border.all(color:  Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/home.png', height: 40, width: 40,),
                          Text('Property for rent', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xFFF25510),
                            letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdField()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color: Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/folder.png', height: 40, width: 40,),
                          Text('Business & Industries', textAlign: TextAlign.center ,style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color:  Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/laptop.png', height: 40, width: 40,),
                          Text('Classified', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color:  Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/clipboard.png', height: 40, width: 40,),
                          Text('Services', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdField()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color: Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/User.png', height: 40, width: 40,),
                          Text('Jobs', textAlign: TextAlign.center ,style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color:  Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/search.png', height: 40, width: 40,),
                          Text('Job Wanted', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color:  Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/users.png', height: 40, width: 40,),
                          Text('Community', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdField()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          border:  Border.all(color: Colors.grey.shade400)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/speakerphone.png', height: 40, width: 40,),
                          Text('Events & Announcements', textAlign: TextAlign.center ,style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFFF25510),
                              letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
