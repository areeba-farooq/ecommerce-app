import 'dart:convert';
import 'package:dubuz_app/Screens/HomeScreen/home.dart';
import 'package:dubuz_app/Screens/Login%20Screen/OTP_login.dart';
import 'package:dubuz_app/Screens/Login%20Screen/forgot_password.dart';
import 'package:dubuz_app/Screens/Sign%20Up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as https;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  bool hidePassword = true;
  bool statusValid = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome Back!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/login-img.png',
              scale: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: globalFormKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Please enter email address';
                        } else if (!input.contains('@')) {
                          return 'Email Address should be valid';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black87,
                          ),
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.black87,
                          ),
                          hintText: 'Info@gmail.com',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Please enter password';
                        } else if (input.length < 5) {
                          return 'Password should be more than 5 characters';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      obscureText: hidePassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black87,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(hidePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Colors.black87,
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                          ),
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, _forgotPassword());
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 200.0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (globalFormKey.currentState!.validate()) {
                    globalFormKey.currentState!.save();
                    print('validated');
                    setState(() {
                      isLoading = true;
                    });

                    apiService();
                    setState(() {
                      isLoading = false;
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Blank field not allowed')));
                  }
                },
                child: isLoading
                    ? Row(
                        children: [
                          CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Please wait...',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      )
                    : Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    padding: EdgeInsets.all(10),
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, _otpLogin());
              },
              child: Text(
                'Login via OTP',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(50, 60),
                        padding: EdgeInsets.all(10),
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ))),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(50, 60),
                        padding: EdgeInsets.all(10),
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ))),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, _signUpRoute());
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Signup',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))
                        ]),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Future<void> apiService() async {
    var url = Uri.parse("https://dubuz.com/api/login");
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var response = await https.post(url,
          body: ({
            'login': emailController.text,
            'password': passwordController.text
          }));

      var jsonData;
      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        print(response.body);
        print(jsonData);
        print(response.statusCode);
        setState(() {
          Navigator.push(context, _loginRoute());
        });
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Invalid Credentials')));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Blank field not allowed')));
    }
  }

  Route _loginRoute() {
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

  Route _signUpRoute() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => const SignUp(),
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

  Route _forgotPassword() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ForgotPassword(),
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

  Route _otpLogin() {
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
}
