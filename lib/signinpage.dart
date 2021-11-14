import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:smartdriver/homepage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailc = TextEditingController();
  TextEditingController passc = TextEditingController();
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
              Center(
                  child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 370,
                    ),
                    Text(
                      'Sign In',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        controller: emailc,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            suffixIcon: Icon(Icons.email)),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, bottom: 20),
                        child: TextFormField(
                          controller: passc,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                              suffixIcon: Icon(Icons.vpn_key)),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _login();
                        },
                        child: Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }

  void _login() async {
    await Amplify.Auth.signOut();
    SignInResult res = await Amplify.Auth.signIn(
      username: emailc.text.trim(),
      password: passc.text.trim(),
    );

    if (res.isSignedIn) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Logged In successful"),
      ));
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    openmap: false,
                    username:
                        emailc.text.substring(0, (emailc.text.indexOf("@"))),
                  )));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Log In Failed"),
      ));
    }
  }
}
