import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googleview extends StatefulWidget {
  const googleview({super.key});

  @override
  State<googleview> createState() => _googleviewState();
}

class _googleviewState extends State<googleview> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGoogLePlex = CameraPosition(
    target: LatLng(24.9056, 67.0822),
    zoom: 14,
  );
  List<Marker> _marker = [];
  List<Marker> _list = const [
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(24.9345872, 67.099281),
      infoWindow: InfoWindow(title: "My Current position"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "Saddar"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "defence"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "Tariq Road"),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGoogLePlex,
          markers: Set<Marker>.of(_marker),
          mapType: MapType.normal,
          myLocationEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_disabled_outlined),
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(
              CameraUpdate.newCameraPosition(const CameraPosition(
            target: LatLng(24.9345872, 67.099281),
            zoom: 14,
          )));
          setState(() {});
        },
      ),
    );
  }
}
