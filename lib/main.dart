import 'package:covidTracker/pages/splash.dart';
import 'package:covidTracker/services/curloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorServices = GeoLocatorServices();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => locatorServices.getLocation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "covidTracker",
        theme: ThemeData(fontFamily: 'NeoSans'),
        home: SplashScreen(),
      ),
    );
  }
}
