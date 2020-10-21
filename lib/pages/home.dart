import 'package:covidTracker/pages/maps.dart';
import 'package:covidTracker/pages/report.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9B81ED),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(260),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    margin: EdgeInsets.only(top: 60, left: 20),
                    child: Text("Stay Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NeoSans',
                            fontSize: 22))),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 18, 10, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    height: 170,
                    width: 390,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            "Data Global",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontFamily: 'NeoSans',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                top: 20,
                              ),
                              child: Text(
                                "Total Confirmed",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 151,
                                top: 10,
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    color: Color(0xff63caac),
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                top: 10,
                              ),
                              child: Text(
                                "Total Death",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 177,
                                top: 10,
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                top: 10,
                              ),
                              child: Text(
                                "Total Recovered",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 150,
                                top: 10,
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
      body: Stack(
        children: [
          Container(
            color: Color(0xfff5f5f5),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25, left: 30),
                  child: Text(
                    "Felling Sick ?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Most people have mild illness and are able to recover at home. \nIf you think you may have been exposed to COVID-19 \ncontact healthcare provider.",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 30),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(15),
                        color: Color(0xff9B81ED),
                        textColor: Colors.white,
                        onPressed: () {
                          _sendMessage(context);
                        },
                        child: Text(
                          'Send Message',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 95),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(15),
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () => {_findDoctor(context)},
                        child: Text(
                          'Find Hospital Nearby',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 210, left: 30),
                child: Text(
                  "Confirmed Cases",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  "Last Updated on 1 hour ago ............",
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 280),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffe9e7f3)),
                      height: 100,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Text(
                            "Jakarta",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffe9e7f3)),
                      height: 100,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Text(
                            "Makassar",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffe9e7f3)),
                      height: 100,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Text(
                            "Semarang",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffe9e7f3)),
                      height: 100,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Text(
                            "Bandung",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _sendMessage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Emergency()));
  }

  void _findDoctor(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Maps()));
  }
}
