import 'package:covidTracker/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "covidTracker",
      theme: ThemeData(fontFamily: 'NeoSans'),
      home: SplashScreen(),
    );
  }
}
