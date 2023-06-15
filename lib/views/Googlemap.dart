import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/profile.dart';
import 'package:consumerpro/views/Home.dart';

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
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      // drawer
      drawer: CustomDrawer(context),
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

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: (Colors.blue.shade900),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const homeview(),
              ));
        },
        child: Image.asset("assets/home_icon.png"),
        elevation: 2.0,
      ),
      bottomNavigationBar: customBottomAppBar(
          onTap1: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => customer_detailview(),
                ));
          },
          onTap2: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => shipment_view(),
                ));
          },
          onTap3: () async {
            GoogleMapController controller = await _controller.future;
            controller.animateCamera(
                CameraUpdate.newCameraPosition(const CameraPosition(
              target: LatLng(24.9345872, 67.099281),
              zoom: 14,
            )));
            setState(() {});
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => googleview(),
                ));
          },
          onTap4: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => supportview(),
                ));
          },
          condition1: 'map'),
    );
  }
}
