import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Screens/Welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.of(context)
          //Navigate to wellcome Screen
          .pushReplacement(MaterialPageRoute(
              builder: (_) =>
                  WelcomeScreen()   
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/logo.png"),
      ),
    );
  }
}
