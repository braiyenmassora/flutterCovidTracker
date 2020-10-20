import 'dart:async';
import 'package:covidTracker/pages/nav.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startHome();
  }

  startHome() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return LandingPage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff63caac),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   "images/covid.png",
          // ),
          // SizedBox(
          //   height: 20.0,
          // ),
          Text(
            "COVID",
            style: TextStyle(
              color: Color(0xff63caac),
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Tracker",
            style: TextStyle(
              color: Color(0xff63caac),
              fontSize: 25.0,
            ),
          ),
        ],
      )),
    );
  }
}
