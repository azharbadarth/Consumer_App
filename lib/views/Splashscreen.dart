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
    Timer  ( const Duration(seconds: 1), () { 
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginview()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: ColorSelect().splashcolor,
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [   
          Container(
            width: _mediaQuery.size.width * 10,
            height: _mediaQuery.size.height * 0.1,
            child: const Center(child: Image(image: AssetImage('assets/splash_pic.png')))),
             
          ],
        ),
      ),
    );
  }
}


// bottom navigation custom widget

// Widget customBottomAppBar({onTap1,onTap2,onTap3,onTap4}) {
//   return BottomAppBar(
//     clipBehavior: Clip.antiAlias,
//     notchMargin: 8,
//     shape: const CircularNotchedRectangle(),
//     child: Wrap(
//       children: [
//         BottomNavigationBar(
//           selectedItemColor: Colors.grey.shade700,
//           unselectedItemColor: Colors.grey.shade700,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//                 icon: GestureDetector(
//                     onTap: onTap1,
//                     child: Image.asset("bottom_nav1.png")
                    
//                     ),
//                 label: 'Create'),
//             BottomNavigationBarItem(
//                 icon: GestureDetector(
//                     onTap:onTap2,
//                     child: Image.asset("bottom_nav2.png")
//                     ),
//                 label: 'Shipment'),
//             BottomNavigationBarItem(
//                 icon: GestureDetector(
//                     onTap: onTap3,
//                     child: Image.asset("bottom_nav3.png")
//                     ),
//                 label: 'Nearest Location'),
//             BottomNavigationBarItem(
//                 icon: GestureDetector(
//                     onTap: onTap4,
//                     child: Image.asset("bottom_nav4.png")
//                     ),
//                 label: 'Support'),
//           ],
//         ),
//       ],
//     ),
//   );
// } 