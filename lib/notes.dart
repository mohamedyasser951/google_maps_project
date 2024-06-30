  // void initCircles() {
  //   Circle circle1 = Circle(
  //       circleId: const CircleId("1"),
  //       fillColor: Colors.redAccent.withOpacity(0.4),
  //       strokeWidth: 2,
  //       radius: 2000,
  //       center: const LatLng(31.16885414603498, 31.88786568256665));
  //   circles.add(circle1);
  // }

  // void initPolyLines() {
  //   Polyline polyline1 =  const Polyline(
  //       color: Colors.red,
  //       endCap: Cap.roundCap,
  //       startCap: Cap.roundCap,
  //       geodesic: true,
  //       zIndex: 3,
  //       width: 4,
  //       patterns:[
  //         PatternItem.dot
  //       ],
  //       points: [
  //         LatLng(31.173701105631487, 31.86434807454754),
  //         LatLng(31.149463827554538, 31.9220262956747),
  //       ],
  //       polylineId: PolylineId('1'));
  //   Polyline polyline2 = const Polyline(
  //       color: Colors.red,
  //       endCap: Cap.roundCap,
  //       startCap: Cap.roundCap,
  //       geodesic: true,
  //       zIndex: 1,
  //       width: 4,
  //       points: [
  //         LatLng(31.15974706635814, 31.880827566298155),
  //         LatLng(31.17854781717457, 31.953268665451915),
  //       ],
  //       polylineId: PolylineId('2'));
  //   plyLines.addAll([polyline1, polyline2]);
  // }


//     void initMarkers() async {
//     var markerIcon = await BitmapDescriptor.fromAssetImage(
//         const ImageConfiguration(), "assets/images/m1.png");
//     var allMarkers = markersItems.map((item) {
//       return Marker(
//           markerId: MarkerId(item.id),
//           position: item.latLng,
//           infoWindow: InfoWindow(title: item.name),
//           icon: markerIcon);
//     }).toSet();
//     //   markers.addAll(allMarkers);
//     //   setState(() {});
//   }

//   void initpolygons() {
//     Polygon polygon1 = Polygon(
//         fillColor: Colors.black26.withOpacity(0.5),
//         strokeWidth: 4,
//         polygonId: const PolygonId("1"),
//         holes: const [
//           [
//             LatLng(31.16415382713063, 31.883745809628998),
//             LatLng(31.1572498109441, 31.873617788657263),
//             LatLng(31.15534010063516, 31.891298910014697),
//           ],
//         ],
//         points: const [
//           LatLng(31.167532204915513, 31.84031548241122),
//           LatLng(31.138885618030514, 31.861601492589102),
//           LatLng(31.134183812775937, 31.946745533300632),
//           LatLng(31.1744354718105, 31.884089132373802),
//         ]);
//     polygons.add(polygon1);
//   }


// }