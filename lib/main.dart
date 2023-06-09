import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Replacement.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Splashscreen.dart';
import 'package:consumerpro/views/Loginview.dart';
import 'package:consumerpro/views/Home.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/profile.dart';
import 'package:consumerpro/views/Return_request.dart';
import 'package:consumerpro/views/scanner.dart';
import 'package:consumerpro/views/share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginview(),
    );
  }
}
