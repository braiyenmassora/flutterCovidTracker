import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context);
    return Scaffold(
        body: (currentPosition != null)
            ? Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                          target: LatLng(currentPosition.latitude,
                              currentPosition.longitude)),
                      zoomGesturesEnabled: true,
                    ),
                  )
                ],
              )
            : Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              ));
  }
}
