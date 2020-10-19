import 'package:covidTracker/pages/emer.dart';
import 'package:covidTracker/pages/maps.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    Home(),
    Maps(),
    Emergency(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _bottomNavCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: _container.elementAt(_bottomNavCurrentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xff63caac),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map_outlined,
                color: Color(0xff63caac),
              ),
              label: "Maps"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Color(0xff63caac),
              ),
              label: "Emergency"),
        ],
        currentIndex: _bottomNavCurrentIndex,
        selectedItemColor: Colors.black,
        onTap: _onTappedItem,
      ),
    );
  }
}
