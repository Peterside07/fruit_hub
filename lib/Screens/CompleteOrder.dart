import 'package:flutter/material.dart';
import 'package:fruit_hub/Screens/Home.dart';
import 'package:fruit_hub/Screens/TrackOrder.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset("assets/complete.png"),
              SizedBox(
                height: 56,
              ),
              Text(
                "Congratulations!!!",
                style: TextStyle(
                    color: Color(0xff27214D),
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16,
              ),
              Text("Your order have been taken and",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              Text("being attended to",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 56,
              ),
              SizedBox(
                height: 56,
                width: 150,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrackOrder()),
                    );
                  },
                  color: Color(0xffFFA451),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    "Track Order",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 56,
                width: 125,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        //Navigate to complete order Screen
                        .pushReplacement(
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: Color(0xffFFA451)),
                  ),
                  child: Text(
                    "Continue shopping",
                    style: TextStyle(fontSize: 10, color: Color(0xffFFA451)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
