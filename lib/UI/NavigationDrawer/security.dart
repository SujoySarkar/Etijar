import 'package:etijar/UI/CustomWidget/pintextfield.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/Registration/kyc3.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class Security extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Security",
            style: TextStyle(fontSize: SizeConfig.screenwidth * 0.045),
          ),
          flexibleSpace: Container(
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.05,
                right: SizeConfig.screenwidth * 0.05,
              ),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(
                    color: Color(0xFF8692A6),
                  )),
            ),
          )),
      backgroundColor: ColorData.onboardingbackground,
      body: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenwidth * 0.05),
            child: Expanded(child: TabBarPages()),
          ),
        ),
      ),
    );
  }
}

class TabBarPages extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  double itemspace = SizeConfig.screenwidth * 0.035;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TabBar(
          tabs: [
            Tab(
              text: "Password",
            ),
            Tab(
              text: "Transaction Pin",
            ),
          ],
        ),
        body: TabBarView(children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: itemspace,
                ),
                TextFieldTitle("Old Password"),
                SizedBox(
                  height: space_between_title_textField,
                ),
                CustomTextField("Old Password"),
                SizedBox(
                  height: itemspace,
                ),
                TextFieldTitle("New Password"),
                SizedBox(
                  height: space_between_title_textField,
                ),
                CustomTextField("New Password"),
                SizedBox(
                  height: itemspace,
                ),
                TextFieldTitle("Confirm Password"),
                SizedBox(
                  height: space_between_title_textField,
                ),
                CustomTextField("Confirm Password"),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.3,
                ),
                CustomButton("Update Password", (){
                  //Navigator.push(context, CupertinoPageRoute(builder: (context)=>KycThree()));
                }),
                SizedBox(
                  height: itemspace,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.lock_open,size: SizeConfig.screenwidth*0.035,color: Color(0xFF8692A6,),),
                    SizedBox(width: SizeConfig.screenwidth*0.02,),
                    Text("Your info is safely secured",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontWeight: FontWeight.w300,
                        fontSize: SizeConfig.screenwidth*0.03),),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: itemspace,
                ),
                TextFieldTitle("Old Pin"),
                SizedBox(
                  height: space_between_title_textField,
                ),
                Center(
                  child: Container(
                    width: SizeConfig.screenwidth/1.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        PinTextField(),
                        PinTextField(),
                        PinTextField(),
                        PinTextField(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: itemspace,
                ),
                TextFieldTitle("New Pin"),
                SizedBox(
                  height: space_between_title_textField,
                ),
                Center(
                  child: Container(
                    width: SizeConfig.screenwidth/1.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        PinTextField(),
                        PinTextField(),
                        PinTextField(),
                        PinTextField(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: itemspace,
                ),
                TextFieldTitle("Confirm Pin"),
                SizedBox(
                  height: space_between_title_textField,
                ),
                Center(
                  child: Container(
                    width: SizeConfig.screenwidth/1.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        PinTextField(),
                        PinTextField(),
                        PinTextField(),
                        PinTextField(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.37,
                ),
                CustomButton("Update Pin", (){
                  //Navigator.push(context, CupertinoPageRoute(builder: (context)=>KycThree()));
                }),
                SizedBox(
                  height: itemspace,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.lock_open,size: SizeConfig.screenwidth*0.035,color: Color(0xFF8692A6,),),
                    SizedBox(width: SizeConfig.screenwidth*0.02,),
                    Text("Your info is safely secured",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontWeight: FontWeight.w300,
                        fontSize: SizeConfig.screenwidth*0.03),),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
