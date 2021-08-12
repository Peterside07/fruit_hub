import 'package:flutter/material.dart';
import 'package:fruit_hub/Screens/Welcome2.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: size.height * .60,
              width: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/fruit_drop.png"),
                    ],
                  ),
                  Image.asset("assets/basket.png"),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset("assets/shadow.png"),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: 327,
                height: 199,
                //padding: EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Get The Freshest Fruit Salad Combo',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                        'We deliver the best and freshest fruit salad in \n town. Order for a combo today!!!',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          //color: Color(0xffD577E)
                        )),
                    SizedBox(
                      height: 50,
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
                                  builder: (_) => AuthScreen()));
                        },
                        color: Color(0xffFFA451),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            "Let’s Continue",
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
