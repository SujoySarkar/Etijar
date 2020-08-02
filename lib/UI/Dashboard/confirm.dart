import 'package:etijar/UI/CustomWidget/draweritem.dart';
import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/pintextfield.dart';
import 'package:etijar/UI/CustomWidget/reusableCategories.dart';
import 'package:etijar/UI/CustomWidget/reusableStocks.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/Dashboard/success-one.dart';
import 'package:etijar/UI/allstrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class Confirm extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  double itemspace = SizeConfig.screenwidth * 0.035;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.onboardingbackground,
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
              padding: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.05,
                right: SizeConfig.screenwidth * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: itemspace,
                  ),
                  Container(
                      width: SizeConfig.screenwidth * 0.2,
                      height: SizeConfig.screenheight * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Material(
                          color: Colors.transparent,
                          borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            splashColor: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(5)),
                            child: Container(
                              width: SizeConfig.screenwidth * 0.2,
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xFF8692A6),
                                    size: SizeConfig.screenwidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: space_between_title_textField,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        color: Color(0xFF8692A6),
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                        SizeConfig.screenwidth * 0.043),
                                  )
                                ],
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Text(
                    "Confirm Purchase!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.screenwidth * 0.055,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.01,
                  ),
                  Text(
                    "You are about to purchase the following stock. Please confirm",
                    style: TextStyle(
                        color: Color(0xFFCDCDCD),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenwidth * 0.043),
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Center(
                    child: Container(
                      height: SizeConfig.screenheight * 0.07,
                      width: SizeConfig.screenwidth * 0.18,
                      child: Image.asset(
                        "images/amazon.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Center(
                    child: Text(
                      "AMZN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth * 0.055,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.005,
                  ),
                  Center(
                    child: Text(
                      "Amazon.com",
                      style: TextStyle(
                          color: Color(0xFFCDCDCD),
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenwidth * 0.043),
                    ),
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Amount",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenwidth*0.006,),

                          Text("\$57,689.19",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.055,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Purchase Type",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenwidth*0.009,),
                          Text("Bank Transfer",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: SizeConfig.screenwidth*0.25,),
                  CustomButton("Proceed", (){

                    showModalBottomSheet(context: context,builder: (context){
                      return FittedBox(
                        child: Container(
                            height: SizeConfig.screenheight/2.8,
                            width: SizeConfig.screenwidth,
                            color: ColorData.onboardingbackground,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: SizeConfig.screenwidth * 0.05,
                                ),
                                Text("Enter Transaction Pin",style: TextStyle(
                                    color: Color(0xFF8692A6),
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.screenwidth * 0.040),),
                                SizedBox(
                                  height: space_between_title_textField,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.04,right: SizeConfig.screenwidth*0.04),

                                  child: Divider(
                                    color: Color(0xFF8692A6),
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                    child: Padding(
                                      padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,bottom: SizeConfig.screenwidth*0.05),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[

                                          Center(
                                            child: Container(
                                              width: SizeConfig.screenwidth/1.8,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,

                                                children: <Widget>[
                                                  TextFieldTitle("Your Pin"),
                                                  SizedBox(
                                                    height: space_between_title_textField,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      PinTextField(),
                                                      PinTextField(),
                                                      PinTextField(),
                                                      PinTextField(),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomButton("Continue", (){

                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstSuccess()));
                                          }),

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



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
