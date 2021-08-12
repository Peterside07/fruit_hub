import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Screens/CompleteOrder.dart';
import 'package:fruit_hub/Screens/Home.dart';
import 'package:google_fonts/google_fonts.dart';

class BasketScreen extends StatefulWidget {
  @override
  _BasketScreenState createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  _showsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 406,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                        color: Color(0xff27214D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F4F9),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "10th avenue, Lekki, Lagos State",
                      hintStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                    )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Number we can call",
                    style: TextStyle(
                        color: Color(0xff27214D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F4F9),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "09090605708",
                      hintStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //pay on delivery
                        SizedBox(
                          height: 56,
                          width: 125,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  //Navigate to complete order Screen
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (_) => CompleteOrder()));
                            },
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              side: BorderSide(color: Color(0xffFFA451)),
                            ),
                            child: Text(
                              "Pay on delivery",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffFFA451)),
                            ),
                          ),
                        ),

                        //Pay with card button
                        SizedBox(
                          height: 56,
                          width: 125,
                          child: RaisedButton(
                            onPressed: () {
                              _showCardsheet();
                            },
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              side: BorderSide(color: Color(0xffFFA451)),
                            ),
                            child: Text(
                              "Pay with card",
                              style: TextStyle(color: Color(0xffFFA451)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  //Pay card sheet
  _showCardsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 511,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Card Holders Name",
                    style: TextStyle(
                        color: Color(0xff27214D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F4F9),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "Adolphus Chris",
                      hintStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                    )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Card Number",
                    style: TextStyle(
                        color: Color(0xff27214D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F4F9),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "1234 5678 9012 1314",
                      hintStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                    )),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Date",
                            style: TextStyle(
                                color: Color(0xff27214D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: 134,
                            padding: EdgeInsets.only(left: 15.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF3F4F9),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: "10/30",
                              hintStyle: GoogleFonts.lato(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                              border: InputBorder.none,
                              fillColor: Colors.grey,
                            )),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "CVV",
                            style: TextStyle(
                                color: Color(0xff27214D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: 134,
                            padding: EdgeInsets.only(left: 15.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF3F4F9),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: "123",
                              hintStyle: GoogleFonts.lato(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                              border: InputBorder.none,
                              fillColor: Colors.grey,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      //padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xffFFA451),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: SizedBox(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context)
                                //Navigate to complete order Screen
                                .pushReplacement(MaterialPageRoute(
                                    builder: (_) => CompleteOrder()));
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "Complete Order",
                            style: TextStyle(color: Color(0xffFFA451)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
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
                    child: Text("My Basket",
                        style: GoogleFonts.lato(
                          fontSize: 24,
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
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 39,
                      ),
                      _BuildBasket("Quinoa fruit salad", "assets/quinoa.png",
                          "20,000", Color(0xffFFFAEB)),
                      _BuildBasket("Tropical fruit salad",
                          "assets/Tropical.png", "20,000", Color(0xffF1EFF6)),
                      _BuildBasket("Melon fruit salad", "assets/BerryWorld.png",
                          "20,000", Color(0xffFEF0F0)),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("Total"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Image(
                                            image: AssetImage(
                                          'assets/naira1.png',
                                        )),
                                      ),
                                      Text(
                                        "60,000",
                                        style: GoogleFonts.lato(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff27214D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: SizedBox(
                                height: 56,
                                width: 150,
                                child: RaisedButton(
                                  onPressed: () {
                                    _showsheet();
                                    //  _showSheet();
                                    // showBottomSheet(
                                    //     context: context,
                                    //     builder: (context) {
                                    //       return Container(
                                    //         child: Column(),
                                    //       );
                                    //     });
                                  },
                                  color: Color(0xffFFA451),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    "Check Out",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
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

_BuildBasket(
  String fruitName,
  String imgPath,
  String price,
  Color color,
) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        offset: Offset(0, -15),
        blurRadius: (50),
        color: Colors.grey.withOpacity(0.15),
      )
    ]),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 64,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(imgPath),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fruitName.toString(),
                  //"Quinoa fruit salad",
                  style: GoogleFonts.lato(color: Color(0xff000000)),
                ),
                Text(
                  "2packs",
                  style: GoogleFonts.lato(color: Color(0xff000000)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image(
                      image: AssetImage(
                    'assets/naira1.png',
                  )),
                ),
                Text(
                  price.toString(),
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff27214D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
