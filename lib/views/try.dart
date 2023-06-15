import 'package:flutter/material.dart';

class tryview extends StatefulWidget {
  const tryview({super.key});

  @override
  State<tryview> createState() => _tryviewState();
}

class _tryviewState extends State<tryview> {
  String title = "First page";
  String second = "second";
  String third = "third";
  String fourth = "fourth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(second),
                value: second,
              ),
              PopupMenuItem(
                child: Text(third),
                value: second,
              ),
              PopupMenuItem(
                child: Text(fourth),
                value: second,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
              ),
              child: Icon(Icons.location_disabled_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
