import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';

class dragview extends StatefulWidget {
  const dragview({super.key});

  @override
  State<dragview> createState() => _dragviewState();
}

class _dragviewState extends State<dragview> {
  // String title = "First page";
  // String second = "second";
  // String third = "third";
  // String fourth = "fourth";
  List month = ["first day", "second day", "third", "fourth day"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Center(
          //   child: Container(
          //     height: MediaQuery.of(context).size.height * 0.070,
          //     width: MediaQuery.of(context).size.width * 0.80,
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 20),
          //       child: CustomTextField(
          //           hinttext: "Country",
          //           suffix: Icon(Icons.keyboard_arrow_down,
          //               color: ColorSelect().text5),
          //           Color: ColorSelect().text5),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
