import 'package:location/location.dart';

class LocationService {
  Location location = Location();

  Future<bool> checkLocationService() async {
    bool isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return false;
      }
    }
    return true;
  }

  Future<bool> checkLocationPermission() async {
    PermissionStatus permissionStatus = await location.requestPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      return false;
    }
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      return permissionStatus == PermissionStatus.granted;
    }
    return true;
  }

  void getRealTimeLocation(void Function(LocationData)? onData) async {
    location.onLocationChanged.listen(onData);
  }
}
