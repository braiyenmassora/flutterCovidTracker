import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeoLocation extends StatefulWidget {
  @override
  _GeoLocationState createState() => _GeoLocationState();
}

class _GeoLocationState extends State<GeoLocation> {
  CameraPosition _initialLocations = CameraPosition(target: LatLng(0.0, 0.0));

  GoogleMapController mapController;

  final Geolocator _geolocator = Geolocator();

  Position _currentPositon;

  String searchAddr;

  _getCurrentLocation() async {
    _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        _currentPositon = position;
        print('CURRENT POS: $_currentPositon');
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(position.latitude, position.longitude),
                zoom: 18.0),
          ),
        );
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Find Hospital"),
          backgroundColor: Color(0xff9B81ED),
        ),
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _initialLocations,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              onMapCreated: (GoogleMapController controler) {
                mapController = controler;
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Find Hospital ',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, top: 15),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        searchLocation();
                      },
                      iconSize: 30,
                    )),
                onChanged: (val) {
                  setState(() {
                    searchAddr = val;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ClipOval(
                  child: Material(
                    color: Colors.white,
                    child: InkWell(
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(
                          Icons.my_location,
                          color: Color(0xff9B81ED),
                        ),
                      ),
                      onTap: () {
                        _getCurrentLocation();
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // serach location

  searchLocation() {
    Geolocator().placemarkFromAddress(searchAddr).then((result) => {
          mapController.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(result[0].position.latitude,
                      result[0].position.longitude),
                  zoom: 16.0)))
        });
  }
}
