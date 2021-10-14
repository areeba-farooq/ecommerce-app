import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Login%20Screen/login_screen.dart';
import 'package:dubuz_app/Screens/Login%20Screen/reset_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Enter the email address associated with your account',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/forgot-img.png',
              scale: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black87,
                    ),
                    hintText: 'Info@gmail.com',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
              ),
            ),
            SizedBox(
              height: 30,
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
                    Navigator.push(context, _resetRoute());
                  });
                },
                child: isLoading ? Row(
                  children: [
                    CircularProgressIndicator(color: Colors.white,),
                    SizedBox(width: 20,),
                    Text('Please wait...', style: TextStyle(color: Colors.white, fontSize: 18),)
                  ],
                ):Text(
                  'Reset Password',
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
                  Navigator.push(context,_loginRoute());
                },
                child: Text(
                  'Go Back',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Route _resetRoute() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => const ResetPassword(),
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
      pageBuilder: (context, animation, secondaryAnimation) => Login(),
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
