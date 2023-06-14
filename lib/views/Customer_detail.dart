import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Home.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/scanner.dart';

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

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      drawer: const Drawer(),
      body: ListView(
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
                          builder: (context) => homeview(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: customarrow(txt: "Create Replacement Shipment"),
                  ),
                ),
                const SizedBox(
                  height: 28,
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
                const SizedBox(
                  height: 23,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 8),
                  child: Text(
                    "Customer Detail",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 17,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Country",
                        suffix: Icon(Icons.keyboard_arrow_down,
                            color: ColorSelect().text5),
                        Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "City",
                        suffix: Icon(Icons.keyboard_arrow_down,
                            color: ColorSelect().text5),
                        Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Service",
                        suffix: Icon(Icons.keyboard_arrow_down,
                            color: ColorSelect().text5),
                        Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Shipper Detail",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "City",
                        suffix: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff989B9F),
                        ),
                        Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Pickup Location",
                        suffix: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff989B9F),
                        ),
                        Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 7,
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
                                        const SizedBox(
                                          height: 10,
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
                                        const SizedBox(
                                          height: 10,
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
                                        const SizedBox(
                                          height: 10,
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
                                        const SizedBox(
                                          height: 10,
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
                                        const SizedBox(
                                          height: 10,
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
                                        const SizedBox(
                                          height: 10,
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

                        // check
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Shipper Name", Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Shipper Email", Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        hinttext: "Shipper Contact",
                        Color: ColorSelect().text5),
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Shipment Detail",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 17,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 8,
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
                const SizedBox(
                  height: 19,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
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

                const SizedBox(
                  height: 10,
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
                                  builder: (context) => scannerview(),
                                ));
                          }),
                    )),
              ],
            ),
          ),
          Container(
            height: 109,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Color(0xffFFFFFF),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipment Options",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Color(0xff989B9F)),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 12,
                ),
                // checks widget
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                          value: ischecked1,
                          onChanged: (newBool) {
                            setState(() {
                              ischecked1 = newBool;
                            });
                          }),
                      const SizedBox(
                        width: 1,
                      ),
                      const Text(
                        "Percel",
                        style:
                            TextStyle(color: Color(0xff989B9F), fontSize: 13),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Checkbox(
                          value: ischecked2,
                          onChanged: (newBool) {
                            setState(() {
                              ischecked2 = newBool;
                            });
                          }),
                      const SizedBox(
                        width: 1,
                      ),
                      const Text(
                        "Fragile",
                        style:
                            TextStyle(color: Color(0xff989B9F), fontSize: 13),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Checkbox(
                          value: ischecked3,
                          onChanged: (newBool) {
                            setState(() {
                              ischecked3 = newBool;
                            });
                          }),
                      const SizedBox(
                        width: 1,
                      ),
                      const Text(
                        "Insurance",
                        style:
                            TextStyle(color: Color(0xff989B9F), fontSize: 13),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Checkbox(
                          value: ischecked4,
                          onChanged: (newBool) {
                            setState(() {
                              ischecked4 = newBool;
                            });
                          }),
                      const SizedBox(
                        width: 1,
                      ),
                      const Text(
                        "COD",
                        style:
                            TextStyle(color: Color(0xff989B9F), fontSize: 13),
                      ),
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
          condition1: 'create'),
    );
  }
}
