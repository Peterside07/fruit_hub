import 'package:flutter/material.dart';
import 'package:fruit_hub/Screens/Home.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(children: [
        SafeArea(
          child: Container(
            height: size.height * .55,
            width: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xffFFA451)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/fruit_drop.png"),
                  ],
                ),
                Image.asset("assets/basket_2.png"),
                SizedBox(
                  height: 8.0,
                ),
                Image.asset("assets/shadow_2.png"),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SafeArea(
            child: Container(
                width: 327,
                height: 199,
                //padding: EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('What is your firstname?',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15.0),
                      decoration: BoxDecoration(
                          color: Color(0xffF3F4F9),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextField(
                          decoration: InputDecoration(
                        hintText: "Tony",
                        hintStyle: GoogleFonts.lato(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                        fillColor: Colors.grey,
                      )),
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context)
                              //Navigate to auth Screen
                              .pushReplacement(MaterialPageRoute(
                                  builder: (_) => HomeScreen()));
                        },
                        color: Color(0xffFFA451),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            "Start Ordering",
                            style: GoogleFonts.lato(
                                fontSize: 16,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        )
      ]),
    );
  }
}
