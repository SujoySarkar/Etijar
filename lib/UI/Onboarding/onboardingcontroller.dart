import 'package:dots_indicator/dots_indicator.dart';
import 'package:etijar/UI/CustomWidget/onboardingdescription.dart';
import 'package:etijar/UI/CustomWidget/onboardingimage.dart';
import 'package:etijar/UI/CustomWidget/onboardingtitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/Login/login.dart';
import 'package:etijar/UI/Registration/registerscreen.dart';
import 'package:etijar/UI/allcolors.dart';
import 'package:etijar/UI/allstrings.dart';
import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingController extends StatefulWidget {
  @override
  _OnboardingControllerState createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  static int initialpage = 0;
  int _currentindex;
  PageController _controller = PageController(
    initialPage: initialpage,
  );

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent, // Color for Android
        statusBarBrightness:
            Brightness.light, // Dark == white status bar -- for IOS.
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.onboardingbackground,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenwidth * 0.001),
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (currentindex) {
                      setState(() {
                        _currentindex = currentindex;
                      });
                    },
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            OnboardingTitle(StringData.onboardingtitle),
                            SizedBox(
                              height: SizeConfig.screenwidth * 0.04,
                            ),
                            OnboardingDscription(
                                StringData.onboarding_description_one),
                            OnboardingDscription(
                                StringData.onboarding_description_one2nd),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: OnboardingImage(
                                        "images/onboardingone.png"))),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            OnboardingTitle(StringData.onboarding_title_two1st),
                            OnboardingTitle(StringData.onboarding_title_two2nd),
                            SizedBox(
                              height: SizeConfig.screenwidth * 0.04,
                            ),
                            OnboardingDscription(
                                StringData.onboarding_description_two),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: OnboardingImage(
                                        "images/onboardingtwo.png"))),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            OnboardingTitle(StringData.onboarding_title_three),
                            SizedBox(
                              height: SizeConfig.screenwidth * 0.04,
                            ),
                            OnboardingDscription(
                                StringData.onboarding_description_three),
                            OnboardingDscription(
                                StringData.onboarding_description_three2nd),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: OnboardingImage(
                                        "images/onboardingthree.png"))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: SizeConfig.screenwidth,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenwidth * 0.06,
                      right: SizeConfig.screenwidth * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new DotsIndicator(
                        dotsCount: 3,
                        position: _currentindex == null
                            ? initialpage.toDouble()
                            : _currentindex.toDouble(),
                        decorator: DotsDecorator(
                          size: const Size(30.0, 6.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          activeSize: const Size(30.0, 6.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                      CustomButton("Create an Account", () {Navigator.push(context, CupertinoPageRoute(builder: (context)=>RegisterScreen()));},),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text(
                          StringData.UseExistingAccount,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenwidth * 0.043),
                        ),
                      ),
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
