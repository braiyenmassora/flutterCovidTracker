import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Data Covid Indonesia",
            style: TextStyle(
                fontFamily: "NeoSans",
                fontWeight: FontWeight.bold,
                fontSize: 24.0),
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: Color(0xfffafafa),
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0),
                            child: Text(
                              "Jakarta",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'NeoSans',
                                  fontSize: 18.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 130.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Positive",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 50.0,
                                    ),
                                    Text(
                                      "22000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sembuh",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 40.0,
                                    ),
                                    Text(
                                      "24000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Meninggal",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      "2334",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0),
                            child: Text(
                              "Sulawesi Selatan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'NeoSans',
                                  fontSize: 18.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Positive",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 50.0,
                                    ),
                                    Text(
                                      "2000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sembuh",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 35.0,
                                    ),
                                    Text(
                                      "25000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Meninggal",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 19.0,
                                    ),
                                    Text(
                                      "12000",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0),
                            child: Text(
                              "Jawa Barat",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'NeoSans',
                                  fontSize: 18.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Positive",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 50.0,
                                    ),
                                    Text(
                                      "12000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sembuh",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 39.0,
                                    ),
                                    Text(
                                      "15000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Meninggal",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      "20000",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0),
                            child: Text(
                              "Papua",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'NeoSans',
                                  fontSize: 18.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 131.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Positive",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 40.0,
                                    ),
                                    Text(
                                      "24000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Meninggal",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      "15000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sembuh",
                                      style: TextStyle(
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      width: 35.0,
                                    ),
                                    Text(
                                      "25000",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NeoSans',
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 0.80),
              child: Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    "Update Data",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'NeoSans'),
                  ),
                ),
              ),
            )
          ],
        ),
        //
      ),
    );
  }
}
