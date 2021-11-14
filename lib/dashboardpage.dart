//@dart=2.9
import 'dart:ui';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smartdriver/homepage.dart';

class Dashboard extends StatefulWidget {
  String username = 'Farhan';
  @override
  _DashboardState createState() => _DashboardState();
  Dashboard({this.username});
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(fontFamily: 'source sans pro', fontSize: 18),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xff2855ae),
              height: 500,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text('Hello ${widget.username}'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/dp.jpeg',
                                ),
                                fit: BoxFit.fill)),
                        height: 90,
                        width: 90,
                      )
                    ]),
              ),
            ),
            Positioned(
                top: 140,
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        openmap: true,
                                        destination:
                                            LatLng(37.425019, -122.093598),
                                      )));
                        },
                        child: Center(
                          child: Text('order 1'),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            primary: Color(0xff2855ae),
                            fixedSize: Size(300, 20)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        openmap: true,
                                        destination:
                                            LatLng(37.423242, -122.073722),
                                      )));
                        },
                        child: Center(
                          child: Text('order 2'),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            primary: Color(0xff2855ae),
                            fixedSize: Size(300, 20)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        openmap: true,
                                        destination:
                                            LatLng(37.408161, -122.069292),
                                      )));
                        },
                        child: Center(
                          child: Text('order 3'),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            primary: Color(0xff2855ae),
                            fixedSize: Size(300, 20)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                      openmap: true,
                                      destination:
                                          LatLng(37.415829, -122.160161))));
                        },
                        child: Center(
                          child: Text('order 4'),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            primary: Color(0xff2855ae),
                            fixedSize: Size(300, 20)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        openmap: true,
                                        destination:
                                            LatLng(37.373263, -122.014275),
                                      )));
                        },
                        child: Center(
                          child: Text('order 5'),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            primary: Color(0xff2855ae),
                            fixedSize: Size(300, 20)),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
