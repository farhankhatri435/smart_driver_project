//@dart=2.9
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/method_channel_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/amplify_hub.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smartdriver/DriverProfile.dart';
import 'package:smartdriver/dashboardpage.dart';
import 'package:smartdriver/drawer.dart';
import 'package:smartdriver/agrregateage.dart';
import 'package:smartdriver/themappage.dart';

class HomePage extends StatefulWidget {
  bool openmap = false;
  bool openprofile = false;
  var destination;
  String username;
  HomePage({this.openmap, this.destination, this.username, this.openprofile});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex;

  // ignore: non_constant_identifier_names

  GlobalKey _bottomNavigationKey = GlobalKey();
  int checkopenmap() {
    if (widget.openmap)
      return 1;
    else {
      return 0;
    }
    // else {
    //   if (widget.openprofile)
    //     return 3;
    //   else
    //     return 0;
    // }
  }

  int checkopenprofile() {
    if (widget.openprofile)
      return 3;
    else
      return 0;
  }

  @override
  void initState() {
    super.initState();
    selectedIndex = checkopenmap();
  }

  @override
  Widget build(BuildContext context) {
    final Pages = [
      Dashboard(username: widget.username),
      ThemapPage(orderdest: widget.destination),
      AggregatePage(),
      Profile(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          // leading: Icon(Icons.dehaze),
          backgroundColor: Color(0xff2855ae),
          actions: [
            Container(
              child: Icon(Icons.notifications),
              margin: EdgeInsets.only(right: 20),
            ),
          ],
        ),
        drawer: CustomDrawer(),
        body: //Dashboard(),
            //body:
            Pages[selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.map,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.access_time_filled_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.manage_accounts,
              size: 30,
              color: Colors.white,
            ),
          ],
          animationDuration: Duration(milliseconds: 300),
          color: Color(0xff2351ad),
          index: selectedIndex,
          height: 60,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color(0xff2351ad),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
