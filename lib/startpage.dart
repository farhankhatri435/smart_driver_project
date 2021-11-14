import 'package:flutter/material.dart';
import 'package:smartdriver/signinpage.dart';
import 'package:smartdriver/signuppage.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'source sans pro', fontSize: 18, color: Colors.black),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned(
                top: -550,
                left: -350,
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  width: 900,
                  height: 900,
                ),
              ),
              Positioned(
                top: 100,
                left: 20,
                child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/logo.jpeg',
                          )),
                    )),
              ),
              Positioned(
                  bottom: 80,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                          },
                          child: Text('Sign In'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
