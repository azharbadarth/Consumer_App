import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';

class return_request_views extends StatefulWidget {
  const return_request_views({super.key});

  @override
  State<return_request_views> createState() => _return_request_viewsState();
}

class _return_request_viewsState extends State<return_request_views> {
  Color backgroundColor = Colors.blue;

  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2022, 11, 5), end: DateTime(2022, 12, 24));
  bool? ischecked_new = false;
  bool isOpen = false;
  bool isOpen2 = false;
  String selectOption = "Sheet No # 501828  7 April 2022";
  List<String> cities = ["Shipment", "PDF load sheet", "PDF CNs"];
  String selectOption2 = "Sheet No # 501828  7 April 2022";
  List<String> cities2 = ["Shipment", "PDF load sheet", "PDF CNs"];
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;
  bool click4 = false;
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final differnce = dateRange.duration;
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: customarrow(txt: "Deliveries"),
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
            height: 24,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //     width: MediaQuery.of(context).size.width * 0.44,
                //     height: MediaQuery.of(context).size.height * 0.052,
                //     decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: ColorSelect().text6,
                //   ),
                //   child: Center(child: Text("Return Requests",style: TextStyle(color: ColorSelect().text5,fontSize: 14),)),
                // ),

                InkWell(
                  onTap: () {
                    click1 = !click1;
                    click2 = false;
                    click3 = false;
                    click4 = false;
                    setState(() {});
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (click1 == true)
                            ? ColorSelect().splashcolor
                            : ColorSelect().text6),
                    child: Center(
                        child: Text(
                      "Return Requests",
                      style:
                          TextStyle(color: ColorSelect().text5, fontSize: 14),
                    )),
                  ),
                ),

                InkWell(
                  onTap: () {
                    click2 = !click2;
                    click1 = false;
                    click3 = false;
                    click4 = false;
                    setState(() {});
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (click2 == true)
                            ? ColorSelect().splashcolor
                            : ColorSelect().text6),
                    child: Center(
                        child: Text(
                      "Returned",
                      style:
                          TextStyle(color: ColorSelect().text5, fontSize: 14),
                    )),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ), //Returned Summary

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    click3 = !click3;
                    click1 = false;
                    click2 = false;
                    click4 = false;
                    setState(() {});
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (click3 == true)
                            ? ColorSelect().splashcolor
                            : ColorSelect().text6),
                    child: Center(
                        child: Text(
                      "Re-Attempt Request",
                      style:
                          TextStyle(color: ColorSelect().text5, fontSize: 14),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    click4 = !click4;
                    click2 = false;
                    click3 = false;
                    click1 = false;
                    setState(() {});
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (click4 == true)
                            ? ColorSelect().splashcolor
                            : ColorSelect().text6),
                    child: Center(
                        child: Text(
                      "Returned Summary",
                      style:
                          TextStyle(color: ColorSelect().text5, fontSize: 14),
                    )),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // customcontainer(txt: "Re-Attempt Request",bgcolor: ColorSelect().text6, txtcolor: ColorSelect().text5),
                // const SizedBox(width: 8,),
                // customcontainer(txt: "Returned Summary",bgcolor: ColorSelect().text6,txtcolor: ColorSelect().text5),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Return Request List",
              style: TextStyle(fontSize: 19),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

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

  void changeBackgroundColor() {
    setState(() {
      // Change the background color on button click
      backgroundColor = Colors.red;
    });
  }
}
