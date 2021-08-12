import "package:flutter/material.dart";
import 'package:fruit_hub/Screens/Home.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.only(left: 32),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFA451),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),

                      ///side: BorderSide(color: Colors.red),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          //Navigate to complete order Screen
                          .pushReplacement(
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Go back"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text("Delivery Status",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 65,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFAEB),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/customer.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Order Taken",
                                  style: TextStyle(
                                      color: Color(0xff27214D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Image.asset(
                              "assets/okay.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 65,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Color(0xffF1EFF6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/ordertaken.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Order is Being Prepared",
                                  style: TextStyle(
                                      color: Color(0xff27214D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Image.asset(
                              "assets/okay.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 65,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Color(0xffFEF0F0),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/bikeman.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Order Is Being Delivered",
                                      style: TextStyle(
                                          color: Color(0xff27214D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Your delivery agent is coming",
                                      style: TextStyle(
                                          color: Color(0xff27214D),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFA451),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Image.asset(
                                "assets/phone_call.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 128,
                        child: Image.asset("assets/map.png"),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 65,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFAEB),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/customer.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Order Received",
                                  style: TextStyle(
                                      color: Color(0xff27214D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 20,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.brightness_1_outlined,
                                    color: Color(0xffFFE3C9),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.brightness_1_outlined,
                                    color: Color(0xffFFE3C9),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.brightness_1_outlined,
                                    color: Color(0xffFFE3C9),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),

                            // Image.asset(
                            //   "assets/okay.png",
                            //   height: 24,
                            //   width: 24,
                            // ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
