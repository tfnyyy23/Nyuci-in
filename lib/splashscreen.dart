import 'package:flutter/material.dart';
import 'dart:async';

import 'package:nyuciin/landing.dart';
import 'package:nyuciin/main.dart';

class SplashscreenPage extends StatefulWidget {
  @override
  _SplashscreenPageState createState() => new _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LandingPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/nyuciin_logo3.png",
          width: 200.0,
          height: 200.0,
        ),
      ),
    );
  }
}
