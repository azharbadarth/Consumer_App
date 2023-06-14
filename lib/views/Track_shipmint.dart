import 'package:consumerpro/views/Googlemap.dart';
import 'package:consumerpro/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:consumerpro/properties/Colors.dart';
import 'package:consumerpro/properties/Customwidget.dart';
import 'package:consumerpro/views/Customer_detail.dart';
import 'package:consumerpro/views/Shipmintview.dart';
import 'package:consumerpro/views/Supportview.dart';
class track_shipment extends StatefulWidget {
  const track_shipment({super.key});

  @override
  State<track_shipment> createState() => _track_shipmentState();
}

class _track_shipmentState extends State<track_shipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(context),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           InkWell(
              onTap: (){
                 Navigator.pop(context);
              },
              child: Padding(padding: const EdgeInsets.only(top: 30,left: 20),
              child: customarrow(txt: "Track Shipment"),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 14),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                      Text("Multiple shipment can be tracked by\n050555,050694",style: TextStyle(color: ColorSelect().text2,fontSize: 16,height: 1.5),),
              ],), 
              ),
          ),

const SizedBox(height: 37,),
Container(
  height: 46,
  width: 388,
  child:   Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
  child: CustomTextField(hinttext: "Enter shipment tracking number",Color: ColorSelect().text5),
  
  ),
),

const SizedBox(height: 21,),
Container(
  height: 46,
  width: 388,
  child:   Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
  
  child: CustomElevated(txt: "Track",bgcolor: ColorSelect().splashcolor,onPressed: (){
  
      
  
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homeview(),));
  
    }),),
),


        ],
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const homeview(),));
        },
        child: Image.asset("assets/home_icon.png"),
        elevation: 2.0,
      ),
     bottomNavigationBar: customBottomAppBar(onTap1: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => customer_detailview(),) );

      }, onTap2: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => shipment_view(),) );           
      },
      onTap3: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => googleview(),) );  
      } ,
      onTap4:  (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => supportview(),) );           
      } 
        ),
    );
  }
}