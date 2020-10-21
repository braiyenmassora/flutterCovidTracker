import 'package:covidTracker/pages/report.dart';
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
    Emergency(),
    Maps(),
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
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.report,
                color: Colors.black,
              ),
              label: "Report"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.black,
              ),
              label: "Maps"),
        ],
        currentIndex: _bottomNavCurrentIndex,
        selectedItemColor: Color(0xff9B81ED),
        unselectedItemColor: Colors.black,
        onTap: _onTappedItem,
      ),
    );
  }
}
