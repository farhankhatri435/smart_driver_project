//@dart=2.9
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  // Faculty Teacher;

  //Profile({required this.Teacher});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff2855ae), Color(0xff7292cf)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // MAIN NAME AND ROLL NUM AND CAMERA
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(color: Color(0xff5278C1))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/dp.jpeg',
                              fit: BoxFit.contain,
                            ),
                            //image
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Color(0xff5278C1)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Akshay Desai", //NAME of student
                                style: TextStyle(
                                    fontFamily: "Source sans pro",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'akshaydesai@gmail.com',
                                // class and roll num
                                style: TextStyle(
                                  fontFamily: "source sans pro",
                                  fontSize: 16, color: Color(0xff777777),
                                  //fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03,
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 22,
                                color: Color(0xff777777),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),

                // NAME AND ALL FIELD

                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Shift Start Time",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: TextFormField(
                              initialValue: "12:00 pm",
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.edit),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffe1e3e8),
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(color: Color(0xffa5a5a5)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              style: TextStyle(
                                fontFamily: "source sans pro",
                                fontSize: 18,
                              ),
                              readOnly: true,
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
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Shift End Time",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: TextFormField(
                              initialValue: '08:30 pm',
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.edit),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffe1e3e8),
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(color: Color(0xffa5a5a5)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              style: TextStyle(
                                fontFamily: "source sans pro",
                                fontSize: 18,
                              ),
                              readOnly: true,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      // for name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: TextFormField(
                              initialValue: 'Farhan',
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffe1e3e8),
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(color: Color(0xffa5a5a5)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              style: TextStyle(
                                fontFamily: "source sans pro",
                                fontSize: 18,
                              ),
                              readOnly: true,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),

                      //PHONE

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Phone",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  // margin: EdgeInsets.only(bottom: 180),
                                  height: 70,
                                  child: Icon(Icons.phone)
                                  // Image.asset(
                                  //   'assets/images/india.png',
                                  //   fit: BoxFit.fitWidth,
                                  //   width: 25,
                                  //   height: 20,
                                  // ),
                                  ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: TextFormField(
                                  initialValue: '123456',
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xffe1e3e8),
                                      ),
                                    ),
                                    hintText: "Phone Number",
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),

                      // for email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: TextFormField(
                              initialValue: 'a@gmail.com',
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffe1e3e8),
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Color(0xffa5a5a5)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              style: TextStyle(
                                fontFamily: "source sans pro",
                                fontSize: 18,
                              ),
                              readOnly: true,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),

                      // blood group & claa teacher

                      // for blood group
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Driver's Vehicle List",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: TextFormField(
                              initialValue: 'Vehicle number 1',
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.add),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffe1e3e8),
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(color: Color(0xffa5a5a5)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              style: TextStyle(
                                fontFamily: "source sans pro",
                                fontSize: 18,
                              ),
                              readOnly: true,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),

                      // for classteacher

                      SizedBox(
                        height: 10,
                      ),

                      //Address
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Address",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "source sans pro",
                                  color: Colors.black.withOpacity(0.54)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.87,
                            child: TextFormField(
                              maxLines: 5,
                              initialValue: 'Near abhishek colony, Jamngar',
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffe1e3e8),
                                  ),
                                ),
                                hintText: "Address",
                                hintStyle: TextStyle(color: Color(0xffa5a5a5)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              style: TextStyle(
                                fontFamily: "source sans pro",
                                fontSize: 18,
                              ),
                              readOnly: true,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
