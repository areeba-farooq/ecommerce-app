import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dubuz_app/Screens/Welcome%20Screen/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('WELCOME TO',
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                    speed: Duration(milliseconds: 200)),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: AnimatedImage(),

            )
          ],
      ),
    );
  }
  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => const Welcome(),
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
