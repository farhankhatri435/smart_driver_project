import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:smartdriver/homepage.dart';
import 'package:smartdriver/terms.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  cov19info() async {
    const url =
        'https://www.who.int/westernpacific/emergencies/covid-19/news-covid-19';
    if (await canLaunch(url)) {
      print('accs');
      await launch(url, forceWebView: true); //forceWebView
    } else {
      print('object');
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Color(0xffd6ecf2),
            ),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Farhan",
                    style: TextStyle(
                        fontFamily: 'source sans pro',
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.verified_user_sharp,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Covid-19 Updates',
                  style: TextStyle(fontFamily: 'source sans pro', fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                  cov19info();
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => CovidUpdate()));
                },
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Icon(
                  Icons.list,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Terms and Conditions',
                  style: TextStyle(fontFamily: 'source sans pro', fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Terms()));
                },
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Icon(
                  Icons.emoji_symbols,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Total Trips',
                  style: TextStyle(fontFamily: 'source sans pro', fontSize: 18),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Edit Profile',
                  style: TextStyle(fontFamily: 'source sans pro', fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                openprofile: true,
                              )));
                },
              ),
            ],
          ),
          Spacer(),
          Container(
            // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.19),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.exit_to_app,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Log Out',
                    style: TextStyle(
                        fontFamily: 'source sans pro',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
              tileColor: Color(0xff345fb4),
              onTap: () async {
                await Amplify.Auth.signOut();
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
