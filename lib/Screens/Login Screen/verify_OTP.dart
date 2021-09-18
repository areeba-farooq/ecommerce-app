import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Login%20Screen/OTP_login.dart';
import 'package:dubuz_app/Screens/Login%20Screen/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_screen.dart';

class VerifyOTP extends StatefulWidget {

  @override
  _VerifyOTPState createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'OTP Verification',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Please enter verification code (OTP) sent to 1234567890',
              style: TextStyle(color: Colors.grey, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black87,
                  ),
                  hintText: 'OTP Code',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () async {

                if (isLoading) return;
                setState(() {
                  isLoading = true;
                });
                await Future.delayed(Duration(seconds: 5));
                setState(() {
                  isLoading = false;
                  Navigator.push(context, _verify());
                });
              },
              child: isLoading ? Row(
                children: [
                  CircularProgressIndicator(color: Colors.white,),
                  SizedBox(width: 20,),
                  Text('Please wait...', style: TextStyle(color: Colors.white, fontSize: 18),)
                ],
              ):Text(
                'Verify OTP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                  padding: EdgeInsets.all(10),
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ))),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, _loginRoute());
              },
              child: Text(
                'Go Back',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, _otpRoute());
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: RichText(
                  text: TextSpan(
                      text: "If you didn't receive a code?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Resend',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))
                      ]),
                )),
          )
        ],
      ),
    );
  }

  Route _verify() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // const begin = Offset(0.0, 1.0);
        // const end = Offset.zero;
        //
        // var tween = Tween(begin: begin, end: end);

        animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        );
      },
    );
  }

  Route _otpRoute() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => const OTPLogin(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // const begin = Offset(0.0, 1.0);
        // const end = Offset.zero;
        //
        // var tween = Tween(begin: begin, end: end);

        animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        );
      },
    );
  }

  Route _loginRoute() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => const Login(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // const begin = Offset(0.0, 1.0);
        // const end = Offset.zero;
        //
        // var tween = Tween(begin: begin, end: end);

        animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        );
      },
    );
  }
}
