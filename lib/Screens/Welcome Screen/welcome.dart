import 'package:dubuz_app/Screens/Login%20Screen/login_screen.dart';
import 'package:dubuz_app/Screens/Sign%20Up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/welcome-img.png'),
          Text(
            'Welcome',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'App allows to take pictures of your receipts and save the receipt information',
              style: TextStyle(color: Colors.grey, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Login',
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
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(150, 50),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            width: 2.0,
                            color: Theme.of(context).primaryColor,
                          ))))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'or via social media',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(50, 60),
                      padding: EdgeInsets.all(10),
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(50, 60),
                      padding: EdgeInsets.all(10),
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
