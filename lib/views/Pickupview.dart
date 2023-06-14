import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';

class pickupviews extends StatefulWidget {
  const pickupviews({super.key});

  @override
  State<pickupviews> createState() => _pickupviewsState();
}

class _pickupviewsState extends State<pickupviews> {
  bool isOpen = false;
  bool isOpen2 = false;
  String selectOption = "Sheet No # 501828  7 April 2022";
  List<String> cities = ["Shipment", "PDF load sheet", "PDF CNs"];
  String selectOption2 = "Sheet No # 501828  7 April 2022";
  List<String> cities2 = ["Shipment", "PDF load sheet", "PDF CNs"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: customarrow(txt: "Track Shipment"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 18),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pickup List",
                    style: TextStyle(
                        color: ColorSelect().blackcolor, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 14),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {});
                    isOpen = !isOpen;
                  },
                  child: Container(
                    height: 46,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: ColorSelect().text4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            selectOption,
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Icon(
                              isOpen
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (isOpen)
                  ListView(
                    primary: true,
                    shrinkWrap: true,
                    children: cities
                        .map((e) => Container(
                              decoration: BoxDecoration(
                                color: ColorSelect().text4,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                    onTap: () {
                                      selectOption2 = e;
                                      setState(() {
                                        isOpen = false;
                                      });
                                    },
                                    child: Text(
                                      e,
                                      style: const TextStyle(fontSize: 16),
                                    )),
                              ),
                            ))
                        .toList(),
                  ),
              ],
            ),
          ),

//  second

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {});
                    isOpen2 = !isOpen2;
                  },
                  child: Container(
                    height: 46,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: ColorSelect().text4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            selectOption,
                            style: const TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Icon(
                              isOpen2
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (isOpen2)
                  ListView(
                    primary: true,
                    shrinkWrap: true,
                    children: cities2
                        .map((e) => Container(
                              decoration: BoxDecoration(
                                color: ColorSelect().text4,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                    onTap: () {
                                      selectOption = e;
                                      setState(() {
                                        isOpen2 = false;
                                      });
                                    },
                                    child: Text(
                                      e,
                                      style: const TextStyle(fontSize: 16),
                                    )),
                              ),
                            ))
                        .toList(),
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
      bottomNavigationBar: customBottomAppBar(onTap1: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => customer_detailview(),
            ));
      }, onTap2: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => shipment_view(),
            ));
      }, onTap3: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => googleview(),
            ));
      }, onTap4: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => supportview(),
            ));
      }),
    );
  }
}
