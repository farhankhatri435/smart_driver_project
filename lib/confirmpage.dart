// ignore_for_file: unused_import
// @dart=2.9
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:smartdriver/homepage.dart';
import 'package:smartdriver/signinpage.dart';

class ConfirmPage extends StatefulWidget {
  String email;
  String pass;
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
  ConfirmPage({this.email, this.pass});
}

class _ConfirmPageState extends State<ConfirmPage> {
  TextEditingController codec = TextEditingController();
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
                      'Confirm Account',
                      style: TextStyle(
                          fontFamily: 'source sans pro',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        controller: codec,
                        decoration: InputDecoration(
                            hintText: 'Enter code',
                            labelText: 'Enter code',
                            suffixIcon: Icon(Icons.email)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _confirmSignUp();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()));
                        },
                        child: Text(
                          'Confirm',
                        ),
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
    Amplify.Auth.signIn(
      username: widget.email.trim(),
      password: widget.pass.trim(),
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Logged In successful"),
    ));
  }

  _confirmSignUp() async {
    await Amplify.Auth.confirmSignUp(
      username: widget.email.trim(),
      confirmationCode: codec.text.trim(),
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Confirmation complete"),
    ));
  }
}
