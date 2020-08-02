import 'dart:ui';

import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/pintextfield.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Login/login.dart';
import 'package:etijar/UI/Registration/kyc1.dart';
import 'package:etijar/UI/allcolors.dart';
import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allstrings.dart';

class RegisterScreen extends StatelessWidget {
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
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text(
                          "Login",
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
                  PageDetails(StringData.createanaccount),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Your Fullname"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("Surname First"),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Email Address"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("name@gmail.com"),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Phone Number"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF8692A6),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.screenwidth * 0.01),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenwidth * 0.03,
                          right: SizeConfig.screenwidth * 0.03),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/nijerianflag.png",
                                fit: BoxFit.fill,
                              ),
                              height: SizeConfig.screenwidth * 0.05,
                              width: SizeConfig.screenwidth * 0.06,
                            ),
                            SizedBox(
                              width: space_between_title_textField,
                            ),
                            Text(
                              "+234",
                              style: TextStyle(
                                  color: Color(0xFFCDCDCD),
                                  fontSize: SizeConfig.screenwidth * 0.035),
                            ),
                            SizedBox(
                              width: SizeConfig.screenwidth * 0.1,
                            ),
                            Expanded(
                              child: Container(

                                height: SizeConfig.screenheight/14,
                                child: Center(
                                  child: TextField(
                                    style: TextStyle(
                                        color: Color(0xFFCDCDCD),
                                        fontSize: SizeConfig.screenwidth * 0.035),
                                    decoration: new InputDecoration(
                                      hintText: "01234567",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFCDCDCD),
                                          fontSize: SizeConfig.screenwidth * 0.035),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Password"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextFieldWithSuffixIcon("Create a password",Icons.remove_red_eye,Color(0xFFDADADA)),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Row(
                    children: <Widget>[
                      ReusableCheckBox(),
                      SizedBox(width: SizeConfig.screenwidth*0.04,),
                      Text("Minimun of 8 characters",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: SizeConfig.screenwidth*0.03),)
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.01,
                  ),
                  Row(
                    children: <Widget>[
                      ReusableCheckBox(),
                      SizedBox(width: SizeConfig.screenwidth*0.04,),
                      Text("one UPPERCASE character",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: SizeConfig.screenwidth*0.03),)
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.01,
                  ),
                  Row(
                    children: <Widget>[
                      ReusableCheckBox(),
                      SizedBox(width: SizeConfig.screenwidth*0.04,),
                      Text("one number of unique character",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: SizeConfig.screenwidth*0.03),)
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.1,
                  ),
                  CustomButton("Create an Account", (){
                    showModalBottomSheet(context: context,builder: (context){
                      return FittedBox(
                        child: Container(
                            height: SizeConfig.screenheight/2.5,
                            width: SizeConfig.screenwidth,
                            color: ColorData.onboardingbackground,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: SizeConfig.screenwidth * 0.05,
                                ),
                                PageTitle("Verify Your Account!"),
                                SizedBox(
                                  height: space_between_title_textField,
                                ),
                                PageDetails("Please enter the four digit code sent to"),
                                Text("hassan@gmail.com",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.screenwidth*0.038),),
                                Expanded(
                                  child: Container(
                                    child: Padding(
                                      padding:  EdgeInsets.all(SizeConfig.screenwidth*0.05),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              PinTextField(),
                                              PinTextField(),
                                              PinTextField(),
                                              PinTextField(),
                                            ],
                                          ),
                                          CustomButton("Verify Account", (){
                                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>KycOne()));
                                          }),
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Text("Not My Account",style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: SizeConfig.screenwidth*0.038),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      );
                    });
                  }),
                  SizedBox(
                    height: itemspace,
                  ),
                  Center(
                    child: Text("By Creating account, you agree to our User Agreement",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: SizeConfig.screenwidth*0.03),),
                  ),
                  Center(
                    child: Text("and Privacy Policy",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: SizeConfig.screenwidth*0.03),),
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

class ReusableCheckBox extends StatefulWidget {
  @override
  _ReusableCheckBoxState createState() => _ReusableCheckBoxState();
}

class _ReusableCheckBoxState extends State<ReusableCheckBox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              _value = !_value;
            });
          },
          child: Container(
            height: SizeConfig.screenwidth*0.045,
            width: SizeConfig.screenwidth*0.045,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: _value
                ? Icon(
              Icons.close,
              size: SizeConfig.screenwidth*0.03,
              color: Colors.red,
            )
                : Icon(Icons.check,size:SizeConfig.screenwidth*0.03,color: Colors.green,),
          ),
        ));
  }
}
