import 'package:flutter/material.dart';
import 'package:fruit_hub/Screens/Basket.dart';
import 'package:fruit_hub/Screens/Home.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  final fruitName, imgPath, price;
  CartPage({this.fruitName, this.imgPath, this.price});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var quantity = 1;
  var priceItems = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.height,
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFA451),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        FlatButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios),
                              Text("Go back"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //height: 200,
                    //width: 200,

                    alignment: Alignment.center,
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        widget.imgPath,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.fruitName.toString(),
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff27214D),
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: 32,
                                  width: 32,
                                  child: FloatingActionButton(
                                    backgroundColor: Color(0xffFFFFFF),
                                    onPressed: () {
                                      adjustQuality("minus");
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      size: 17,
                                      color: Color(0xff333333),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                //Change to widge.price
                                child: Text(
                                  quantity.toString(),
                                  style: GoogleFonts.lato(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff27214D)),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                height: 32,
                                width: 32,
                                child: FloatingActionButton(
                                  backgroundColor: Color(0xffFFF2E7),
                                  onPressed: () {
                                    adjustQuality("plus");
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 17,
                                    color: Color(0xffFFA451),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
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
                                (int.parse(widget.price) * quantity).toString(),
                                style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff27214D),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "One Pack Contains:",
                              style: GoogleFonts.lato(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Red Quin, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint ",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            "If you are looking for a new friut salad to eat today, \n quinoa is the perfect brunch for you ",
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              child: FloatingActionButton(
                                backgroundColor: Color(0xffFFF2E7),
                                onPressed: () {},
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 17,
                                  color: Color(0xffFFA451),
                                ),
                              ),
                            ),
                            SizedBox(),
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Container(
                                height: 56,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        //Navigate to auth Screen
                                        .pushReplacement(MaterialPageRoute(
                                            builder: (_) => BasketScreen()));
                                  },
                                  color: Color(0xffFFA451),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 6.0),
                                    child: Text(
                                      "Add to Basket",
                                      style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Container(
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Row(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       //mainAxisAlignment: MainAxisAlignment.start,
                      //       children: [
                      //         Row(
                      //           //mainAxisAlignment:
                      //           //   MainAxisAlignment.spaceBetween,
                      //           //crossAxisAlignment: CrossAxisAlignment.end,
                      //           children: [
                      //             Container(
                      //               height: 48,
                      //               width: 48,
                      //               child: FloatingActionButton(
                      //                 backgroundColor: Color(0xffFFF2E7),
                      //                 onPressed: () {},
                      //                 child: Icon(
                      //                   Icons.favorite_border,
                      //                   size: 17,
                      //                   color: Color(0xffFFA451),
                      //                 ),
                      //               ),
                      //             ),
                      //             //Spacer(),
                      //             // SizedBox(
                      //             //   width: 10,
                      //             // ),
                      //             Row(
                      //               crossAxisAlignment: CrossAxisAlignment.end,
                      //               //mainAxisAlignment: MainAxisAlignment.end,
                      //               children: [
                      //                 Container(
                      //                   decoration: BoxDecoration(
                      //                     borderRadius:
                      //                         BorderRadius.circular(35.0),
                      //                   ),
                      //                   // width: double.infinity,
                      //                   child: RaisedButton(
                      //                     onPressed: () {
                      //
                      //                     },
                      //                     color: Color(0xffFFA451),
                      //                     child: Padding(
                      //                       padding: EdgeInsets.symmetric(
                      //                           vertical: 6.0),
                      //                       child: Text(
                      //                         "Add to Basket",
                      //                         style: GoogleFonts.lato(
                      //                             fontSize: 16,
                      //                             color: Color(0xffFFFFFF),
                      //                             fontWeight: FontWeight.w500,
                      //                             fontStyle: FontStyle.normal),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // )

                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     children: [
                      //       Row(
                      //         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //         crossAxisAlignment: CrossAxisAlignment.end,
                      //         children: [
                      //           Container(
                      //             height: 48,
                      //             width: 48,
                      //             child: FloatingActionButton(
                      //               backgroundColor: Color(0xffFFF2E7),
                      //               onPressed: () {},
                      //               child: Icon(
                      //                 Icons.favorite_border,
                      //                 size: 17,
                      //                 color: Color(0xffFFA451),
                      //               ),
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             height: 10,
                      //           ),
                      //           Container(
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(35.0),
                      //             ),
                      //             // width: double.infinity,
                      //             child: RaisedButton(
                      //               onPressed: () {
                      //                 // Navigator.of(context)
                      //                 //     //Navigate to auth Screen
                      //                 //     .pushReplacement(MaterialPageRoute(
                      //                 //         builder: (_) => HomeScreen()));
                      //               },
                      //               color: Color(0xffFFA451),
                      //               child: Padding(
                      //                 padding:
                      //                     EdgeInsets.symmetric(vertical: 6.0),
                      //                 child: Text(
                      //                   "Add to Cart",
                      //                   style: GoogleFonts.lato(
                      //                       fontSize: 16,
                      //                       color: Color(0xffFFFFFF),
                      //                       fontWeight: FontWeight.w500,
                      //                       fontStyle: FontStyle.normal),
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // )
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

  adjustQuality(pressed) {
    switch (pressed) {
      case 'plus':
        setState(() {
          quantity += 1;
        });
        return;
      case 'minus':
        setState(() {
          if (quantity != 1) {
            quantity -= 1;
          }
        });
        return;
    }
  }
}
