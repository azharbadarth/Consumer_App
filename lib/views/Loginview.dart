import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Home.dart';

class loginview extends StatefulWidget {
  const loginview({super.key});

  @override
  State<loginview> createState() => _loginviewState();
}

class _loginviewState extends State<loginview> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            "Login Now",
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: _mediaQuery.size.height * 0.01,
          ),
          Center(
              child: Text(
            "Please enter the details below to continue.",
            style: TextStyle(color: ColorSelect().text2, fontSize: 16),
            maxLines: 2,
          )),
          SizedBox(
            height: _mediaQuery.size.height * 0.03,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.8,
            child: CustomTextField(
              obtext: false,
              hinttext: 'Email',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.8,
            child: CustomTextField(
                obtext: false,
                hinttext: 'Password',
                suffix: Icon(Icons.remove_red_eye)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            "Forgot Password? Call Customer Service at",
            style: TextStyle(color: ColorSelect().text2, fontSize: 16),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            "021-111-BLUE-EX (258339)",
            style: TextStyle(color: ColorSelect().splashcolor, fontSize: 16),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.80,
            child: CustomElevated(
                txt: "Log in",
                bgcolor: ColorSelect().splashcolor,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const homeview(),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
