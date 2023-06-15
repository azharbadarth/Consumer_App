import 'package:consumerpro/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';

class deliveries_view extends StatefulWidget {
  const deliveries_view({super.key});

  @override
  State<deliveries_view> createState() => _deliveries_viewState();
}

class _deliveries_viewState extends State<deliveries_view> {
  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2022, 11, 5), end: DateTime(2022, 12, 24));
  bool? ischecked_new = false;
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final differnce = dateRange.duration;
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: customappbar(context),
      drawer: CustomDrawer(context),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: customarrow(txt: "Create Replacement Shipment"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: _mediaQuery.size.width * 0.28,
                    height: _mediaQuery.size.height * 0.052,
                    decoration: BoxDecoration(
                      color: ColorSelect().text6, // text6
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: pickDateRange,
                            child: Icon(
                              Icons.date_range_outlined,
                              color: ColorSelect().text5,
                              size: 18,
                            )),
                        const SizedBox(
                          width: 4,
                        ),
                        InkWell(
                            onTap: pickDateRange,
                            child: Text(
                              "Select Date",
                              style: TextStyle(
                                  color: ColorSelect().text5, fontSize: 14),
                            )), // color: Color(0xff989B9F)
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                      width: _mediaQuery.size.width * 0.28,
                      height: _mediaQuery.size.height * 0.0502,
                      decoration: BoxDecoration(
                        color: ColorSelect().text6,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: InkWell(
                              onTap: pickDateRange,
                              child: Text(
                                "Excel",
                                style: TextStyle(
                                    color: ColorSelect().text5, fontSize: 14),
                              )))),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                      width: _mediaQuery.size.width * 0.28,
                      height: _mediaQuery.size.height * 0.052,
                      decoration: BoxDecoration(
                        color: ColorSelect().text6,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                          onTap: pickDateRange,
                          child: Center(
                              child: Text(
                            "CSV",
                            style: TextStyle(
                                color: ColorSelect().text5, fontSize: 14),
                          )))),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Delivery List",
              style: TextStyle(fontSize: 19),
            ),
          ),
          const SizedBox(
            height: 11,
          ),

          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          const SizedBox(
            height: 10,
          ),
          customborder(txt1: "CN# 5018288897", date: "7 April 2022"),
          // const SizedBox(height: 10,),
          // customborder(txt1: "CN# 5018288897",date: "7 April 2022",size: 16),
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

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
  }
}
