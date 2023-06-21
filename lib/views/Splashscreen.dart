import 'dart:async';
// import 'package:consumerpro/views/Home.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Loginview.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => _splash_viewState();
}

class _splash_viewState extends State<splash_view> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginview()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: ColorSelect().splashcolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: _mediaQuery.size.width * 10,
                height: _mediaQuery.size.height * 0.1,
                child: const Center(
                    child: Image(image: AssetImage('assets/splash_pic.png')))),
          ],
        ),
      ),
    );
  }
}
