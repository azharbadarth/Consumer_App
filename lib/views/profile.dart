import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/profile.dart';
import 'package:consumerpro/views/Home.dart';

class profileview extends StatefulWidget {
  const profileview({super.key});

  @override
  State<profileview> createState() => _profileviewState();
}

class _profileviewState extends State<profileview> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      drawer: CustomDrawer(context),
      body: ListView(
        children: [
          SizedBox(
            height: _mediaQuery.size.height * 0.060,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: const AssetImage("assets/profile_pic.png"),
              radius: 50,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          height: _mediaQuery.size.height * 0.030,
                          width: _mediaQuery.size.width * 0.070,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Container(
                              height: _mediaQuery.size.height * 0.020,
                              width: _mediaQuery.size.width * 0.050,
                              child: const Image(
                                  image: AssetImage("assets/edit_icon.png")))))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  hinttext: "KHI-00114", Color: ColorSelect().text5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "Account Title",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  CustomTextField(hinttext: "AAK", Color: ColorSelect().text5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "Name",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  hinttext: "Asad Ahmed Khan", Color: ColorSelect().text5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "Address",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  hinttext: "Shahrae faisal", Color: ColorSelect().text5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "Cell",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  hinttext: "03113294921", Color: ColorSelect().text5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  hinttext: "asadahmedkhan17@gmail.com",
                  Color: ColorSelect().text5),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: (Colors.blue.shade900),
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
      ),
    );
  }
}
