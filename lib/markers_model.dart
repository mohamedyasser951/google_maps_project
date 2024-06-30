import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkersModel {
  final String name, id;
  final LatLng latLng;

  MarkersModel({required this.id, required this.name, required this.latLng});
}

List<MarkersModel> markersItems = [
  MarkersModel(
      id: "1",
      name: "الادارة الصحية بالمنزلة",
      latLng: const LatLng(31.15647693654189, 31.933184552318007)),
  MarkersModel(
      id: "2",
      name: "اوكازيون المنصوره",
      latLng: const LatLng(31.161252517842044, 31.93368282650133)),
  MarkersModel(
      id: "3",
      name: "محطة قطار المنزله",
      latLng: const LatLng(31.149330170796134, 31.93188903919123)),
];
