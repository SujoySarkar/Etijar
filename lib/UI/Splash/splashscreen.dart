import 'dart:async';

import 'package:etijar/UI/Onboarding/onboardingcontroller.dart';
import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent, // Color for Android
        statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
    ));
    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          CupertinoPageRoute(builder: (context) => OnboardingController()));
    });
    super.initState();
  }
  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent, // Color for Android
        statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Image.asset("images/splashlogo.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Center(
                child: Image.asset(
                  "images/mosque.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
