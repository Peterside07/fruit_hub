import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Foodtabcard extends StatefulWidget {
  @override
  _FoodtabcardState createState() => _FoodtabcardState();
}

class _FoodtabcardState extends State<Foodtabcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              _BuidListItem("Quinoa fruit salad", "assets/quinoa.png", "10,000",
                  Color(0xffFFFAEB)),
              _BuidListItem("Tropical fruit salad", "assets/Tropical.png",
                  "10,000", Color(0xffFEF0F0)),
            ],
          )
        ],
      ),
    );
  }

  //Fruit Items data
  _BuidListItem(String fruitName, String imgPath, String price, Color color) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //      // builder: (context) => CartPage(),
          //     ));
        },
        child: Container(
          height: 183,
          width: 152,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
          ),
          child: Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 15,
                              color: Color(0xffFFA451),
                            )
                          ],
                        ),
                      ),
                      Hero(
                          tag: fruitName,
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              //Colors.white
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                imgPath,
                                height: 80,
                                width: 80,
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        fruitName,
                        style: GoogleFonts.lato(
                            fontSize: 16, color: Color(0xff27214D)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image(image: AssetImage('assets/naira.png')),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    price,
                                    style: GoogleFonts.lato(
                                      fontSize: 17,
                                      color: Color(0xffF08626),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.add,
                              size: 24,
                              color: Color(0xffFFA451),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
