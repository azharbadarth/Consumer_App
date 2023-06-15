import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
// import 'package:consumerpro/views/Home.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Deliveries.dart';
import 'package:consumerpro/views/Replacement.dart';
import 'package:consumerpro/views/Track_shipmint.dart';
import 'package:consumerpro/views/Return_request.dart';
import 'package:consumerpro/views/Pickupview.dart';
import 'package:consumerpro/views/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:consumerapp/views/deliveries.dart';
// import 'package:consumerapp/views/Track_Shipment.dart';
// import 'package:consumerapp/views/Return_Request.dart';
// import 'package:consumerapp/views/PickupView.dart';

// custom appbar

customappbar(context) {
  return AppBar(
    iconTheme: IconThemeData(color: ColorSelect().blackcolor, size: 32),
    backgroundColor: ColorSelect().whitecolor,
    elevation: 0.0,
    titleSpacing: 0,
    // automaticallyImplyLeading: false,
    title: Row(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.030,
            width: MediaQuery.of(context).size.width * 0.150,
            child: const Image(image: AssetImage("assets/Logo.png"))),
        SizedBox(width: MediaQuery.of(context).size.width * 0.040),
        Container(
          height: MediaQuery.of(context).size.height * 0.044,
          width: MediaQuery.of(context).size.width * 0.54,
          decoration: BoxDecoration(
            color: const Color(0xffF4F6F9),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextFormField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              /// cvheck //
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorSelect().bordercolor),
                borderRadius: BorderRadius.circular(10),
              ),
              // check //
              hintText: "Track your shipment",
              prefix: const Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
              hintStyle: const TextStyle(fontSize: 14),

              //  border:  InputBorder.none
            ),
          ),
        ),
      ],
    ),
    actions: [
      Container(
          height: MediaQuery.of(context).size.height * 0.00,
          // width: MediaQuery.of(context).size.width *0.090,
          child: const Image(image: AssetImage("assets/Notification.png"))),
    ],
  );
}

// custom textfield

CustomTextField({
  obtext = true,
  hinttext,
  suffix,
  Color,
}) {
  return TextFormField(
    obscureText: obtext,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: ColorSelect().bordercolor),
        borderRadius: BorderRadius.circular(10),
      ),
      hintText: hinttext,
      hintStyle: TextStyle(fontSize: 14, color: Color),
      filled: true,
      fillColor: ColorSelect().fieldcolor,
      suffix: suffix,
    ),
  );
}

// custom elevated button

CustomElevated({txt, bgcolor, onPressed}) // context parameter also pass
{
  return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          //  fixedSize: Size(320, 55),
          backgroundColor: bgcolor),
      child: Text(
        txt,
        style: const TextStyle(
          fontSize: 16,
        ),
      ));
}

// elevated button 2

CustomElevated2({txt, bgcolor, onPressed}) // context parameter also pass
{
  return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: const Size(345, 46),
          backgroundColor: bgcolor),
      child: Text(
        txt,
        style: const TextStyle(
          fontSize: 16,
        ),
      ));
}

// custom row

class CustomRow extends StatelessWidget {
  final num1;
  final txt1;
  final num2;
  final txt2;
  const CustomRow(
      {super.key,
      required this.num1,
      required this.txt1,
      this.num2,
      this.txt2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(text: num1),
            WidgetSpan(
              child: SizedBox(width: MediaQuery.of(context).size.width * 0.010),
            ),
            TextSpan(text: txt1)
          ])),
          Text.rich(TextSpan(children: [
            TextSpan(text: num2),
            WidgetSpan(
              child: SizedBox(width: MediaQuery.of(context).size.width * 0.06),
            ),
            TextSpan(text: txt2)
          ])),
        ],
      ),
    );
  }
}

// custom bottom navigation

Widget customBottomAppBar({onTap1, onTap2, onTap3, onTap4, condition1}) {
  return BottomAppBar(
    // color: (checked == true? Colors.pink : Colors.red),
    clipBehavior: Clip.antiAlias,
    notchMargin: 8,
    shape: const CircularNotchedRectangle(),
    child: Wrap(
      children: [
        BottomNavigationBar(
          selectedItemColor: Colors.grey.shade700,
          unselectedItemColor: Colors.grey.shade700,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: onTap1,

                child: SvgPicture.asset("assets/create.svg",
                    // check condition
                    color: (condition1 == 'create'
                        ? Colors.blue.shade900
                        : Colors.grey.shade700)),

                // child: Image.asset("assets/bottom_nav1.png")
              ),
              label: 'Create',
            ),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: onTap2,
                  child: SvgPicture.asset(
                    "assets/shipmint_icon.svg",
                    color: (condition1 == 'shipment'
                        ? Colors.blue.shade900
                        : Colors.grey.shade700),
                  ),
                ),
                label: 'Shipment',
                backgroundColor: (condition1 == "shipment"
                    ? Colors.blue.shade900
                    : Colors.grey.shade700)),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: onTap3,
                  child: SvgPicture.asset(
                    "assets/map_icon.svg",
                    color: (condition1 == 'map'
                        ? Colors.blue.shade900
                        : Colors.grey.shade700),
                  ),
                ),
                label: 'Nearest Location'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: onTap4,
                  child: SvgPicture.asset(
                    "assets/support_icon.svg",
                    color: (condition1 == 'support'
                        ? Colors.blue.shade900
                        : Colors.grey.shade700),
                  ),
                ),
                label: 'Support'),
          ],
        ),
      ],
    ),
  );
}

// back arrow custom widget

customarrow({txt}) {
  return Row(
    children: [
      const Icon(
        Icons.arrow_back_ios,
        size: 16,
      ),
      const SizedBox(
        width: 4,
      ),
      Text(
        txt,
        style: const TextStyle(fontSize: 18),
      )
    ],
  );
}

// custom check box

customcheckbox({left, value, onchanged, txt}) {
  return Padding(
    padding: EdgeInsets.only(left: left),
    child: Row(
      children: [
        Checkbox(
            activeColor: const Color(0xff002B70),
            value: value,
            onChanged: onchanged),
        const SizedBox(
          width: 6,
        ),
        Text(
          txt,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    ),
  );
}

// model classes shipmentview

class custommodel {
  final img;
  final txt;
  final onTap;
  custommodel({this.img, this.txt, this.onTap});
}

List<custommodel> list = [
  custommodel(
      img: "assets/ship_img1.png", txt: "Deliveries", onTap: deliveries_view()),
  custommodel(
      img: "assets/ship_img2.png", txt: "Replacement", onTap: replace_view()),
  custommodel(
      img: "assets/ship_img3.png",
      txt: "Track Shipment",
      onTap: track_shipment()),
  custommodel(
      img: "assets/ship_img4.png",
      txt: "Return Request",
      onTap: return_request_views()),
  custommodel(
      img: "assets/ship_img5.png", txt: "Pickups", onTap: pickupviews()),
];

// support custom widget

class supportmodel {
  final img;
  final txt;
  final onTap;
  supportmodel({this.img, this.txt, this.onTap});
}

List<supportmodel> supportlist = [
  supportmodel(img: "assets/call.png", txt: "Call", onTap: () {}),
  supportmodel(img: "assets/chat.png", txt: "Email"),
  supportmodel(img: "assets/email.png", txt: "Email"),
];

customborder({txt1, date}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      width: 388,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorSelect().text4,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txt1,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              date,
              style: const TextStyle(fontSize: 16),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
            ),
          ],
        ),
      ),
    ),
  );
}

// custom container

customcontainer(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.28,
    height: MediaQuery.of(context).size.height * 0.052,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.green,
    ),
    child: const Center(
        child: Text(
      "fmfkm",
      style: TextStyle(color: Colors.red, fontSize: 14),
    )),
  );
}

CustomDrawer(context) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.022),
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
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: const Image(
                                image: AssetImage("assets/profile_pic.png")),
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
                          height: MediaQuery.of(context).size.height * 0.004,
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
                style:
                    TextStyle(fontSize: 16, color: ColorSelect().splashcolor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0050,
                    width: MediaQuery.of(context).size.width * 0.0080,
                    decoration: BoxDecoration(
                        color: ColorSelect().text2,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(". "),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.030,
                  ),
                  Expanded(
                    child: Text(
                      "Deliveries",
                      style:
                          TextStyle(color: ColorSelect().text2, fontSize: 14),
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
                    height: MediaQuery.of(context).size.height * 0.0050,
                    width: MediaQuery.of(context).size.width * 0.0080,
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
                      style:
                          TextStyle(color: ColorSelect().text2, fontSize: 14),
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
                    height: MediaQuery.of(context).size.height * 0.0050,
                    width: MediaQuery.of(context).size.width * 0.0080,
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
                      style:
                          TextStyle(color: ColorSelect().text2, fontSize: 14),
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
                    height: MediaQuery.of(context).size.height * 0.0050,
                    width: MediaQuery.of(context).size.width * 0.0080,
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
                      style:
                          TextStyle(color: ColorSelect().text2, fontSize: 14),
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
              padding: EdgeInsets.only(left: 16, top: 140),
              child: Image(image: AssetImage("assets/back_arrow.png")),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.040,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Text(
                "Log Out",
                style: TextStyle(color: ColorSelect().text2, fontSize: 18),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
