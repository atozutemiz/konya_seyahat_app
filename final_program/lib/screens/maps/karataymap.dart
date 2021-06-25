// @dart=2.9
import 'dart:math';

import 'package:flutter/material.dart';
import "package:google_maps_flutter/google_maps_flutter.dart";

class Karataymap extends StatefulWidget {
  const Karataymap({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _KarataymapState createState() => _KarataymapState();
}

class _KarataymapState extends State<Karataymap> {
  GoogleMapController _controller;

  final CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(37.874893, 32.492935),
    zoom: 16.4746,
  );

  final List<Marker> markers = [];

  addMarker(cordinate) {
    int id = Random().nextInt(100);

    setState(() {
      markers
          .add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        onMapCreated: (controller) {
          setState(() {
            _controller = controller;
          });
        },
        markers: markers.toSet(),
        onTap: (cordinate) {
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.animateCamera(CameraUpdate.zoomOut());
        },
        child: const Icon(Icons.zoom_out),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
