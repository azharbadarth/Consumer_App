import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class shareview extends StatefulWidget {
  const shareview({super.key});

  @override
  State<shareview> createState() => _shareviewState();
}

class _shareviewState extends State<shareview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Share.share("com.example.consumerpro");
            },
            child: Text("Apps")),
      ),
    );
  }
}
