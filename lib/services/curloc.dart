import 'package:geolocator/geolocator.dart';

class GeoLocatorServices {
  Future<Position> getLocation() async {
    return await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
}
