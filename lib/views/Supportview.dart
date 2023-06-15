import 'package:consumerpro/views/Home.dart';
import 'package:consumerpro/views/Loginview.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:share_plus/share_plus.dart';

class supportview extends StatefulWidget {
  const supportview({super.key});

  @override
  State<supportview> createState() => _supportviewState();
}

class _supportviewState extends State<supportview> {
  final TextEditingController _numberCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      drawer: CustomDrawer(context),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homeview(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: customarrow(txt: "Support"),
            ),
          ),
          SizedBox(
            height: _mediaQuery.size.height * 0.010,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 0,
                  childAspectRatio: (4 / 3)),
              children: [
                // Call
                InkWell(
                  onTap: () async {
                    FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                  },
                  child: Container(
                    // height: 150,
                    // width: 188,
                    margin: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: ColorSelect().text4,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: _mediaQuery.size.height * 0.090,
                            width: _mediaQuery.size.width * 0.160,
                            child: Image.asset("assets/call.png")),
                        SizedBox(
                          height: _mediaQuery.size.height * 0.00,
                        ),
                        const Text("Call"),
                      ],
                    ),
                  ),
                ),
                // Chat
                Container(
                  // height: 150,
                  // width: 188,
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: ColorSelect().text4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: _mediaQuery.size.height * 0.090,
                          width: _mediaQuery.size.width * 0.160,
                          child: Image.asset("assets/chat.png")),
                      SizedBox(
                        height: _mediaQuery.size.height * 0.00,
                      ),
                      const Text("Chat"),
                    ],
                  ),
                ),

                // Email
                Container(
                  // height: 150,
                  // width: 188,
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: ColorSelect().text4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Share.share("com.example.consumerpro");
                        },
                        child: Container(
                            height: _mediaQuery.size.height * 0.090,
                            width: _mediaQuery.size.width * 0.160,
                            child: Image.asset("assets/email.png")),
                      ),
                      SizedBox(
                        height: _mediaQuery.size.height * 0.00,
                      ),
                      const Text("Email"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => homeview(),
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
          onTap3: () {
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
          condition1: 'support'),
    );
  }
}
