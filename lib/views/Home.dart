import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/profile.dart';

class homeview extends StatefulWidget {
  const homeview({super.key});

  @override
  State<homeview> createState() => _homeviewState();
}

class _homeviewState extends State<homeview> {
  List images = [
    "assets/home_img1.png",
    "assets/home_img1.png",
    "assets/home_img1.png",
  ];

  bool check = false;
  int x = 0;
  String condition1 = "";
  @override
  Widget build(BuildContext context) {
    List<_PieData> chartData = [
      _PieData('Others', 55.0, const Color(0xff03a596)),
      _PieData('Jack', 8.0, const Color(0xff7e5e7b)),
      _PieData('Others', 52.0, const Color(0xffcfa19c)),
      _PieData('David', 34.0, const Color(0xffb9d3b6)),
      _PieData('Steve', 31.0, const Color(0xffc6d53f)),
      _PieData('Others', 25.0, const Color(0xff00adef)),
    ];
    var _mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: customappbar(context),
        // drawer
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.022),
                    Row(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.120,
                            width: MediaQuery.of(context).size.width * 0.090,
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => profileview(),
                                      ));
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: const Image(
                                      image:
                                          AssetImage("assets/profile_pic.png")),
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Asad Ahemd Khan",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.004,
                              ),
                              Text(
                                "asadahmedkhan17@gmail.com",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: ColorSelect().text5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0xffC0C0C0)),
                  ],
                ),
              ),
              Column(
                children: [
                  const ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.001,
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Create Shipment",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.001,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.local_shipping,
                      color: ColorSelect().splashcolor,
                    ),
                    title: Text(
                      "Shipment",
                      style: TextStyle(
                          fontSize: 16, color: ColorSelect().splashcolor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0070,
                          width: MediaQuery.of(context).size.width * 0.0070,
                          decoration: BoxDecoration(
                              color: ColorSelect().text2,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(". "),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        Expanded(
                          child: Text(
                            "Deliveries",
                            style: TextStyle(
                                color: ColorSelect().text2, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0070,
                          width: MediaQuery.of(context).size.width * 0.0070,
                          decoration: BoxDecoration(
                              color: ColorSelect().text2,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(". "),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        Expanded(
                          child: Text(
                            "Pickup",
                            style: TextStyle(
                                color: ColorSelect().text2, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0070,
                          width: MediaQuery.of(context).size.width * 0.0070,
                          decoration: BoxDecoration(
                              color: ColorSelect().text2,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(". "),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        Expanded(
                          child: Text(
                            "Track",
                            style: TextStyle(
                                color: ColorSelect().text2, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0070,
                          width: MediaQuery.of(context).size.width * 0.0070,
                          decoration: BoxDecoration(
                              color: ColorSelect().text2,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(". "),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        Expanded(
                          child: Text(
                            "Statement",
                            style: TextStyle(
                                color: ColorSelect().text2, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Support",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Nearest Location",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 120),
                    child: Image(image: AssetImage("assets/back_arrow.png")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.040,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Text(
                      "Log Out",
                      style:
                          TextStyle(color: ColorSelect().text2, fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        body: Container(
          height: MediaQuery.of(context).size.height * 0.77,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.014,
              ),

              //crousel slider
              Container(
                height: MediaQuery.of(context).size.height * 0.150,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.96,
                      disableCenter: true,
                    ),
                    items: images
                        .map((item) => Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Image(
                                      image: AssetImage(item),
                                      fit: BoxFit.fitWidth,
                                      width: MediaQuery.of(context).size.width,
                                    )),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              SizedBox(
                height: _mediaQuery.size.height * 0.012,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: _mediaQuery.size.height * 0.100,
                  width: _mediaQuery.size.width * 0.0,
                  decoration: BoxDecoration(
                      color: ColorSelect().text3,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // Text("Last Statement for the period\nof 04-Feb to 04-Feb"),

                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text.rich(TextSpan(
                            text: "Last Statement for the period\n",
                            style: TextStyle(
                                color: const Color(0xff6E6E6E),
                                fontSize: 18,
                                height: _mediaQuery.size.height * 0.0020),
                            children: <InlineSpan>[
                              const TextSpan(
                                  text: "of 04-Feb to 04-Feb ",
                                  style: TextStyle(
                                      color: Color(0xff6E6E6E), fontSize: 16)),
                              TextSpan(
                                  text: "Rs. 40,340",
                                  style: TextStyle(
                                      color: ColorSelect().splashcolor,
                                      fontSize: 16))
                            ])),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: _mediaQuery.size.height * 0.016,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: Container(
                  width: _mediaQuery.size.width * 70,
                  height: _mediaQuery.size.height * 0.66,
                  decoration: BoxDecoration(
                    color: ColorSelect().text4,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //
                  // check condition
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Dashboard",
                                style: TextStyle(fontSize: 18),
                              ),
                              PopupMenuButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: ColorSelect().splashcolor,
                                  ),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: ColorSelect().whitecolor,
                                  ),
                                ),
                                itemBuilder: (BuildContext bc) {
                                  return [
                                    const PopupMenuItem(
                                        child: Text(
                                      "Today",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                    const PopupMenuItem(
                                        child: Text(
                                      "Yesterday",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                    const PopupMenuItem(
                                        child: Text("Last 7 Days")),
                                    const PopupMenuItem(
                                        child: Text("Last 30 Days")),
                                    const PopupMenuItem(
                                        child: Text("This Month")),
                                    const PopupMenuItem(
                                        child: Text("Last Month")),
                                    const PopupMenuItem(
                                        child: Text("Custom Range")),
                                  ];
                                },
                              ),
                            ],
                          ),
                        ),

                        // circular char

                        Container(
                          height: _mediaQuery.size.height * 0.40,
                          child: SfCircularChart(

                              //  title: ChartTitle(text: 'Sales by sales person'),
                              //  legend: Legend(isVisible: true),
                              series: <DoughnutSeries<_PieData, String>>[
                                DoughnutSeries<_PieData, String>(
                                    explode: true,
                                    explodeIndex: 0,
                                    dataSource: chartData,
                                    xValueMapper: (_PieData data, _) => data.x,
                                    yValueMapper: (_PieData data, _) => data.y,
                                    innerRadius: '68%',
                                    pointColorMapper: (_PieData data, _) =>
                                        data.color,
                                    //  dataLabelMapper: (_PieData data, _) => data.color,
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: true)),
                              ]),
                        ),
                        Column(
                          children: [
                            // SizedBox(height: 80),
                            const CustomRow(
                                num1: "31",
                                txt1: "Accepted Shipments",
                                num2: "18",
                                txt2: "Arrived Shipments"),
                            SizedBox(height: _mediaQuery.size.height * 0.010),
                            const CustomRow(
                                num1: "55",
                                txt1: "Booked Shipments",
                                num2: "5",
                                txt2: "In-Transit Shipments"),
                            SizedBox(height: _mediaQuery.size.height * 0.010),
                            const CustomRow(
                                num1: "23",
                                txt1: "Shipments Ready",
                                num2: "8",
                                txt2: " Delivered Shipments"),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 44),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "For Pickup",
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "0 / 0 ( 0.00% ) ",
                                style: TextStyle(
                                    color: ColorSelect().text2, fontSize: 16),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 4),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Return - Delivered / Total",
                                style: TextStyle(
                                    fontSize: 13, color: ColorSelect().text2),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // floating action button
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
            condition1: 'home'),
      ),
    );
  }
}

// bottom chart class

class _PieData {
  _PieData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
