import 'dart:ui';

import 'package:flutter/material.dart';

class AggregatePage extends StatefulWidget {
  @override
  _AggregatePageState createState() => _AggregatePageState();
}

class _AggregatePageState extends State<AggregatePage> {
  @override
  bool switchval = false;
  bool switchval2 = false;
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
                        child: Text('Aggregates'),
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
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   margin: EdgeInsets.only(left: 5),
                          //   padding: EdgeInsets.symmetric(
                          //       vertical: 5, horizontal: 10),
                          //   child: Text(
                          //     "Company 1",
                          //     style: TextStyle(
                          //         fontSize: 15,
                          //         fontFamily: "source sans pro",
                          //         color: Colors.black.withOpacity(0.54)),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: Stack(
                              children: [
                                TextFormField(
                                  initialValue: 'Ola',
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xffe1e3e8),
                                      ),
                                    ),
                                    hintText: "Name",
                                    hintStyle:
                                        TextStyle(color: Color(0xffa5a5a5)),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                  ),
                                  style: TextStyle(
                                    fontFamily: "source sans pro",
                                    fontSize: 18,
                                  ),
                                  readOnly: true,
                                ),
                                Positioned(
                                    right: 15,
                                    child: Switch(
                                        value: switchval,
                                        onChanged: (abc) {
                                          setState(() {
                                            switchval = abc;
                                          });
                                        }))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   margin: EdgeInsets.only(left: 5),
                          //   padding: EdgeInsets.symmetric(
                          //       vertical: 5, horizontal: 10),
                          //   child: Text(
                          //     "Shift End Time",
                          //     style: TextStyle(
                          //         fontSize: 15,
                          //         fontFamily: "source sans pro",
                          //         color: Colors.black.withOpacity(0.54)),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.87,
                              child: Stack(
                                children: [
                                  TextFormField(
                                    initialValue: 'Uber',
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xffe1e3e8),
                                        ),
                                      ),
                                      hintText: "Name",
                                      hintStyle:
                                          TextStyle(color: Color(0xffa5a5a5)),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                    ),
                                    style: TextStyle(
                                      fontFamily: "source sans pro",
                                      fontSize: 18,
                                    ),
                                    readOnly: true,
                                  ),
                                  Positioned(
                                      right: 15,
                                      child: Switch(
                                          value: switchval2,
                                          onChanged: (abc) {
                                            setState(() {
                                              switchval2 = abc;
                                            });
                                          }))
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
