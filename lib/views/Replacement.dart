import 'package:consumerpro/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
import 'package:consumerpro/views/Googlemap.dart';

class replace_view extends StatefulWidget {
  const replace_view({super.key});

  @override
  State<replace_view> createState() => _replace_viewState();
}

class _replace_viewState extends State<replace_view> {
  bool data = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context),
      drawer: CustomDrawer(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: customarrow(txt: "Replacement"),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Replacement Shipment Types",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ////
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 0,
                  childAspectRatio: (4 / 3)),
              children: [
                InkWell(
                  onTap: fetchData,
                  child: Container(
                    height: 150,
                    width: 188,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: ColorSelect().text4,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 37,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 39,
                                child: Image(
                                    image:
                                        AssetImage("assets/circle_icon.png"))),
                            SizedBox(
                              width: 4,
                            ),
                            SizedBox(
                                height: 39,
                                child: Image(
                                    image: AssetImage("assets/Logo_2.png"))),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                            height: 39,
                            width: 130,
                            child: const Text(
                              "Replace BlueEX shipment",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),
                ),

                // second container
                Container(
                  height: 150,
                  width: 188,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: ColorSelect().text4,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 37,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 39,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const customer_detailview()));
                                  },
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/circle_icon.png")))),
                          const SizedBox(
                            width: 4,
                          ),
                          const SizedBox(
                              height: 39,
                              child:
                                  Image(image: AssetImage("assets/3PL.png"))),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          height: 39,
                          width: 130,
                          child: const Text(
                            "Replace BlueEX shipment",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),

          if (data == true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  hinttext: "Enter Master Shipment Number:",
                  Color: ColorSelect().text5),
            ),

          const SizedBox(
            height: 21,
          ),
          if (data == true)
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 46,
                  width: 388,
                  // height: MediaQuery.of(context).size.height*0.078,
                  // width: MediaQuery.of(context).size.width*0.8,
                  child: CustomElevated(
                      txt: "Submit Master CN",
                      bgcolor: ColorSelect().splashcolor,
                      onPressed: () {
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => return_request_views(),));
                      }),
                )),

          const SizedBox(
            height: 21,
          ),
          if (data == true)
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
                            "Please enter the delivered shipment number in the above text field.",
                        style:
                            TextStyle(color: ColorSelect().text2, fontSize: 16))
                  ])),
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

  void fetchData() {
    setState(() {
      data = !data;
    });
  }
}
