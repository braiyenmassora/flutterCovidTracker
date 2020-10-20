import 'package:covidTracker/services/curloc.dart';
import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  // create markers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GeoLocation(),
      ],
    ));
    // final currentPosition = Provider.of<Position>(context);
  }
}
