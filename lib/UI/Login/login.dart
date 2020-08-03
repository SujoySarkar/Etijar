import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Dashboard/dashboard.dart';
import 'package:etijar/UI/Registration/registerscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../allstrings.dart';
import '../sizeconfig.dart';

class LoginPage extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.02;
  double itemspace = SizeConfig.screenwidth * 0.035;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.onboardingbackground  ,
      body: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenwidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: SizeConfig.screenwidth * 0.18,
                        width: SizeConfig.screenwidth * 0.18,
                        child: Image.asset("images/splashlogo.png"),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Color(0xFF478BFF),
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.screenwidth * 0.05),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.05,
                  ),
                  PageTitle(StringData.welcome),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  PageDetails("Log into your account"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Email Address"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("name@gmail.com"),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Password"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextFieldWithSuffixIcon("Enter Password",Icons.remove_red_eye,Color(0xFFDADADA)),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.15,
                  ),
                  CustomButton("Sign In", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                  }),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.06,
                  ),
                  Center(
                    child: Text("Forgot Password?",style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.screenwidth*0.04),),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
