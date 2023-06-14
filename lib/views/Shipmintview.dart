import 'package:consumerpro/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';

class shipment_view extends StatefulWidget {
  const shipment_view({super.key});

  @override
  State<shipment_view> createState() => _shipment_viewState();
}

class _shipment_viewState extends State<shipment_view> {
  var ab;

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: customappbar(context),
      drawer: const Drawer(),
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
              child: customarrow(txt: "Shipment"),
            ),
          ),
          SizedBox(
            height: _mediaQuery.size.height * 0.010,
          ),
          //
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 0,
                  childAspectRatio: (4 / 3)),
              itemCount: list.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => list[index].onTap));
                  },
                  child: Container(
                      // height: 150,
                      // width: 188,
                      margin: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: const Color(0xffEEEFF1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(height: _mediaQuery.size.height * 0.012,),
                          Container(
                              height: _mediaQuery.size.height * 0.090,
                              width: _mediaQuery.size.width * 0.160,
                              child: Image.asset(list[index].img)),
                          SizedBox(
                            height: _mediaQuery.size.height * 0.00,
                          ),
                          Text(
                            list[index].txt,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      )),
                );
              },
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
          condition1: 'shipment'),
    );
  }
}
