import 'package:flutter/material.dart';

class Emergency extends StatefulWidget {
  @override
  _EmergencyState createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9B81ED),
        title: Text(
          "Send Message",
          style: TextStyle(
            fontFamily: 'NeoSans',
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: yourName(),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: phoneNumber(),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: yourCity(),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 35, left: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: const EdgeInsets.all(15),
                color: Color(0xff9B81ED),
                textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  'Send Message',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget yourName() {
  return TextField(
    decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        labelText: 'Full Name',
        labelStyle: TextStyle(color: Colors.black),
        hintText: 'Mas Parman'),
  );
}

Widget phoneNumber() {
  return TextField(
    decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        labelText: 'Phone Number',
        labelStyle: TextStyle(color: Colors.black),
        hintText: '082123456765'),
  );
}

Widget yourCity() {
  return TextField(
    decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        labelText: 'City',
        labelStyle: TextStyle(color: Colors.black),
        hintText: 'Jakarta'),
  );
}
