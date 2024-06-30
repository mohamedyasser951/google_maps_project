import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_project/location_services.dart';

class CustomeGoogleMap extends StatefulWidget {
  const CustomeGoogleMap({super.key});

  @override
  State<CustomeGoogleMap> createState() => _CustomeGoogleMapState();
}

class _CustomeGoogleMapState extends State<CustomeGoogleMap> {
  late CameraPosition cameraPosition;
  late GoogleMapController googleMapController;
  late LocationService locationService;
  Set<Marker> currentMarker = {};

  @override
  void initState() {
    cameraPosition = const CameraPosition(zoom: 12, target: LatLng(0, 0));
    locationService = LocationService();
    updateLocation();
    super.initState();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  void updateLocation() async {
    bool locationServicesEnable = await locationService.checkLocationService();
    if (locationServicesEnable) {
      bool locationPermissionEnable =
          await locationService.checkLocationPermission();
      if (locationPermissionEnable) {
        locationService.getRealTimeLocation((locationData) {
          
          googleMapController.animateCamera(CameraUpdate.newLatLng(
              LatLng(locationData.latitude!, locationData.longitude!)));
          Marker marker = Marker(
              markerId: const MarkerId("1"),
              position:
                  LatLng(locationData.latitude!, locationData.longitude!));
          currentMarker.add(marker);
          setState(() {});
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content:
                Text("Please enable Location Permisssion and Try again!!! ")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Please enable Location SerVices and Try again!!! ")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GoogleMap(
            markers: currentMarker,
            zoomControlsEnabled: false,
            initialCameraPosition: cameraPosition,
            onMapCreated: (controller) {
              googleMapController = controller;
            },
          ),
          ElevatedButton(onPressed: () {}, child: const Text("GO TO"))
        ],
      ),
    );
  }

  void updateMapStyle() async {
    var mapStyle = await DefaultAssetBundle.of(context)
        .loadString("assets/GoogleMapsStyles/night_style.json");
    googleMapController.setMapStyle(mapStyle);
  }
}
