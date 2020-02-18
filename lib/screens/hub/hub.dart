import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hub extends StatefulWidget {
  @override
  State<Hub> createState() => MapSampleState();
}

class MapSampleState extends State<Hub> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.497911, 127.0262719),
          zoom: 14.4746,
        ),
      ),
    );
  }
}
