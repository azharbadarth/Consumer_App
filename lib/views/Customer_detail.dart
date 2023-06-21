import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Home.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/scanner.dart';
import 'package:consumerpro/views/Customer_detail.dart';

class customer_detailview extends StatefulWidget {
  const customer_detailview({super.key});

  @override
  State<customer_detailview> createState() => _customer_detailviewState();
}

class _customer_detailviewState extends State<customer_detailview> {
  bool? ischecked1 = false;
  bool? ischecked2 = false;
  bool? ischecked3 = false;
  bool? ischecked4 = false;
  bool? ischecked5 = false;
  bool? ischecked6 = false;

  String title = "pickup Loaction";
  String Location1 = "Nazimabad";
  String Location2 = "Gulshan Iqbal";
  String Loaction3 = "Saddar";
  String Loaction4 = "Tariq road";

  String title2 = "Destination Country";
  String Country = "Pakistan";

  String title3 = "City";
  String City = "Karachi";

  String title4 = "Services";
  String Service = "Blue Edge";

  // TextEditingController

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      drawer: CustomDrawer(context),
      body: Stack(
        children: [
          Container(
            height: 600,
            child: ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const homeview(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: customarrow(txt: "Create Replacement Shipment"),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.028,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text.rich(TextSpan(
                      text: "Disclaimer: ",
                      style: TextStyle(
                          color: ColorSelect().blackcolor,
                          fontSize: 16,
                          height: 1.2),
                      children: <InlineSpan>[
                        TextSpan(
                            text:
                                "BlueEX is not liable for the contents of return parcel. We are only responsible for delivering the return parcel back to origin.",
                            style: TextStyle(
                                color: ColorSelect().text2, fontSize: 16))
                      ])),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.023,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 8),
                  child: Text(
                    "Customer Detail",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.017,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Full Name", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Address", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Email", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Phone", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      // obscureText: obtext,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorSelect().bordercolor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: title2,
                        hintStyle:
                            TextStyle(fontSize: 14, color: ColorSelect().text5),
                        filled: true,
                        fillColor: ColorSelect().fieldcolor,
                        suffix: PopupMenuButton(
                            child: const Icon(Icons.keyboard_arrow_down),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(Country),
                                    value: Country,
                                  ),
                                ],
                            onSelected: (String newValue) {
                              setState(() {
                                title2 = newValue;
                              });
                            }),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      // obscureText: obtext,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorSelect().bordercolor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: title3,
                        hintStyle:
                            TextStyle(fontSize: 14, color: ColorSelect().text5),
                        filled: true,
                        fillColor: ColorSelect().fieldcolor,
                        suffix: PopupMenuButton(
                            child: const Icon(Icons.keyboard_arrow_down),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(City),
                                    value: City,
                                  ),
                                ],
                            onSelected: (String newValue) {
                              setState(() {
                                title3 = newValue;
                              });
                            }),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      // obscureText: obtext,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorSelect().bordercolor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: title4,
                        hintStyle:
                            TextStyle(fontSize: 14, color: ColorSelect().text5),
                        filled: true,
                        fillColor: ColorSelect().fieldcolor,
                        suffix: PopupMenuButton(
                            child: const Icon(Icons.keyboard_arrow_down),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(Service),
                                    value: Service,
                                  ),
                                ],
                            onSelected: (String newValue) {
                              setState(() {
                                title4 = newValue;
                              });
                            }),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: _mediaQuery.size.height * 0.034,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Shipper Detail",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.017,
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      // obscureText: obtext,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorSelect().bordercolor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: title,
                        hintStyle:
                            TextStyle(fontSize: 14, color: ColorSelect().text5),
                        filled: true,
                        fillColor: ColorSelect().fieldcolor,
                        suffix: PopupMenuButton(
                            child: const Icon(Icons.keyboard_arrow_down),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(Location1),
                                    value: Location1,
                                  ),
                                  PopupMenuItem(
                                    child: Text(Location2),
                                    value: Location2,
                                  ),
                                  PopupMenuItem(
                                    child: Text(Loaction3),
                                    value: Loaction3,
                                  ),
                                  PopupMenuItem(
                                    child: Text(Loaction4),
                                    value: Loaction3,
                                  ),
                                ],
                            onSelected: (String newValue) {
                              setState(() {
                                title = newValue;
                              });
                            }),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: _mediaQuery.size.height * 0.007,
                ),

                // dialogue box
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton(
                        child: Text(
                          "Add Pickup Location",
                          style: TextStyle(
                              color: ColorSelect().splashcolor, fontSize: 18),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                width: 388,
                                height: 520,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Icon(
                                                  Icons.close_outlined))),
                                      const Center(
                                          child: Text(
                                        "Add Pickup Location",
                                        style: TextStyle(fontSize: 18),
                                      )),
                                    ],
                                  ),
                                  content: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height:
                                              _mediaQuery.size.height * 0.010,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.070,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.80,
                                          child: CustomTextField(
                                              hinttext: "Pickup Location Name",
                                              suffix: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: ColorSelect().text5),
                                              Color: ColorSelect().text5),
                                        ),
                                        SizedBox(
                                          height:
                                              _mediaQuery.size.height * 0.010,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.070,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.80,
                                          child: CustomTextField(
                                              hinttext:
                                                  "Pickup Location Contact No",
                                              suffix: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: ColorSelect().text5),
                                              Color: ColorSelect().text5),
                                        ),
                                        SizedBox(
                                          height:
                                              _mediaQuery.size.height * 0.010,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.070,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.80,
                                          child: CustomTextField(
                                              hinttext: "Pickup Location Email",
                                              suffix: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: ColorSelect().text5),
                                              Color: ColorSelect().text5),
                                        ),
                                        SizedBox(
                                          height:
                                              _mediaQuery.size.height * 0.010,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.070,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.80,
                                          child: CustomTextField(
                                              hinttext:
                                                  "Pickup Location Origin",
                                              suffix: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: ColorSelect().text5),
                                              Color: ColorSelect().text5),
                                        ),
                                        SizedBox(
                                          height:
                                              _mediaQuery.size.height * 0.010,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.070,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.80,
                                          child: CustomTextField(
                                              hinttext:
                                                  "Pickup Location Address",
                                              suffix: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: ColorSelect().text5),
                                              Color: ColorSelect().text5),
                                        ),
                                        SizedBox(
                                          height:
                                              _mediaQuery.size.height * 0.010,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.070,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.70,
                                          child: CustomElevated(
                                            txt: "Add Pickup Location",
                                            bgcolor: ColorSelect().splashcolor,
                                            onPressed: () {},
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )),

                SizedBox(
                  height: _mediaQuery.size.height * 0.020,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Shipment Detail",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.017,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Product Name", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Pieces", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Weight (KG)", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.008,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text.rich(TextSpan(
                      text: "Note: ",
                      style: TextStyle(
                          color: ColorSelect().blackcolor,
                          fontSize: 16,
                          height: 1.2),
                      children: <InlineSpan>[
                        TextSpan(
                            text:
                                "This is not the final weight. Subject to the confirmation at Blue-Ex Operations.",
                            style: TextStyle(
                                color: ColorSelect().text2, fontSize: 16))
                      ])),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.019,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Product Ref", Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Other Courier Shipment No",
                        Color: ColorSelect().text5),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Remarks", Color: ColorSelect().text5),
                  ),
                ),

                SizedBox(
                  height: _mediaQuery.size.height * 0.010,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.070,
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: CustomElevated(
                          txt: "Book Now",
                          bgcolor: ColorSelect().splashcolor,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QRViewExample(),
                                ));
                          }),
                    )),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1, // Adjust this to set initial height
            minChildSize: 0.1, // Adjust this to set minimum height
            maxChildSize: 1.0, // Adjust this to set maximum height
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  controller: scrollController,
                  children: <Widget>[
                    ListTile(
                        title: const Text(
                          "Shipment Options",
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: PopupMenuButton(
                          child: const Icon(Icons.keyboard_arrow_down_outlined),
                          itemBuilder: (BuildContext bc) {
                            return [
                              const PopupMenuItem(
                                  child: Text(
                                "Blue Edge",
                                style: TextStyle(fontSize: 16),
                              )),
                            ];
                          },
                        )),
                    SizedBox(
                      height: _mediaQuery.size.height * 0.010,
                    ),
                    // checkbox
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: ischecked1,
                                  onChanged: (newBool) {
                                    setState(() {
                                      ischecked1 = newBool;
                                      ischecked2 = false;
                                      ischecked3 = false;
                                      ischecked4 = false;
                                      ischecked5 = false;
                                    });
                                  }),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                "Fragile",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 13),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              Checkbox(
                                  value: ischecked2,
                                  onChanged: (newBool) {
                                    setState(() {
                                      ischecked2 = newBool;
                                      ischecked1 = false;
                                      ischecked3 = false;
                                      ischecked4 = false;
                                      ischecked5 = false;
                                    });
                                  }),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                "Insurance",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 13),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              Checkbox(
                                  value: ischecked3,
                                  onChanged: (newBool) {
                                    setState(() {
                                      ischecked3 = newBool;
                                      ischecked1 = false;
                                      ischecked2 = false;
                                      ischecked4 = false;
                                      ischecked5 = false;
                                    });
                                  }),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                "COD",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: _mediaQuery.size.height * 0.008,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 1,
                              ),
                              Checkbox(
                                  value: ischecked4,
                                  onChanged: (newBool) {
                                    setState(() {
                                      ischecked4 = newBool;
                                      ischecked1 = false;
                                      ischecked2 = false;
                                      ischecked3 = false;
                                      ischecked5 = false;
                                    });
                                  }),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                "Document",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 13),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              Checkbox(
                                  value: ischecked5,
                                  onChanged: (newBool) {
                                    setState(() {
                                      ischecked5 = newBool;
                                      ischecked1 = false;
                                      ischecked2 = false;
                                      ischecked3 = false;
                                      ischecked4 = false;
                                    });
                                  }),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                "Parcel",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: _mediaQuery.size.height * 0.010,
                          ),
                          Divider(
                            thickness: 1,
                            color: ColorSelect().text5,
                          ),
                          SizedBox(
                            height: _mediaQuery.size.height * 0.010,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Cash Collection",
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xff000000)),
                              ),
                              Checkbox(
                                  value: ischecked6,
                                  onChanged: (newBool) {
                                    setState(() {
                                      ischecked6 = newBool;
                                      ischecked1 = false;
                                      ischecked2 = false;
                                      ischecked3 = false;
                                      ischecked4 = false;
                                      ischecked5 = false;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
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
                builder: (context) => const homeview(),
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
                  builder: (context) => const customer_detailview(),
                ));
          },
          onTap2: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const shipment_view(),
                ));
          },
          onTap3: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const googleview(),
                ));
          },
          onTap4: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const supportview(),
                ));
          },
          condition1: 'create'),
    );
  }
}
