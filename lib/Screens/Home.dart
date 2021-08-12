import "package:flutter/material.dart";
import 'package:fruit_hub/Screens/Basket.dart';
import 'package:fruit_hub/Screens/Cart.dart';
import 'package:fruit_hub/Screens/Foodtab.dart';
import 'package:fruit_hub/widgets/Foodcard.dart';
import "package:google_fonts/google_fonts.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sort),
                Container(
                  child: Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BasketScreen()),
                            );
                          },
                          child: Image.asset("assets/cart.png")),
                      Text(
                        "my basket",
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "Hello Tony, What fruit salad \n combo do you want today?",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
                color: Color(0xff27214D),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.0, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Search Box
                Container(
                  height: 56,
                  width: 288,
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                      color: Color(0xffF3F4F9),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "Search for fruit salad combos",
                    hintStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w400),
                    border: InputBorder.none,
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),
                  )),
                ),
                SizedBox(),
                Image(image: AssetImage("assets/icon.png")),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              "Recommended Combo",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                fontStyle: FontStyle.normal,
                color: Color(0xff27214D),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            //Recommended block
            height: 183,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _BuidListItem("Honey lime combo", "assets/Honey-lime.png",
                    "2000", Color(0xffFFFFFF)),
                _BuidListItem("Berry mango combo", "assets/Glowing-berry.png",
                    "8000", Color(0xffFFFFFF)),
                _BuidListItem(
                  "Quinoa fruit salad",
                  "assets/quinoa.png",
                  "2000",
                  Color(0xffFFFFFF),
                )
              ],
            ),
          ),
          SizedBox(),
          Padding(
              padding: EdgeInsets.only(left: 24),
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                //labelStyle: ,
                tabs: [
                  Tab(
                    child: Text("Hottest"),
                  ),
                  Tab(
                    child: Text("Popular"),
                  ),
                  Tab(
                    child: Text("New combo"),
                  ),
                  Tab(
                    child: Text("Top"),
                  )
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height - 450,
            child: TabBarView(controller: tabController, children: [
              Foodtabcard(),
              Foodtabcard(),
              Foodtabcard(),
              Foodtabcard(),
            ]),
          ),
        ],
      ),
    );
  }

  //User Stack or Card
  _BuidListItem(String fruitName, String imgPath, String price, Color color) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(
                  imgPath: imgPath,
                  fruitName: fruitName,
                  price: price,
                ),
              ));
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
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Color(0xffFFA451),
                              ),
                              iconSize: 24,
                              onPressed: () {},
                              //Icons.add,
                              //size: 24,
                              splashColor: Color(0xffFFA451),
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
