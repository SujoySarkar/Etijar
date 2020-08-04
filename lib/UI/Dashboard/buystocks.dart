import 'package:etijar/UI/CustomWidget/draweritem.dart';
import 'package:etijar/UI/CustomWidget/reusableCategories.dart';
import 'package:etijar/UI/CustomWidget/reusableStocks.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/allstrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';
import 'confirm.dart';

class BuyStocks extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  double itemspace = SizeConfig.screenwidth * 0.035;
  bool _value = false;

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                      Container(
                        height: SizeConfig.screenheight * 0.07,
                        width: SizeConfig.screenwidth * 0.18,
                        child: Image.asset(
                          "images/amazon.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                          width: SizeConfig.screenwidth * 0.2,
                          height: SizeConfig.screenheight * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              )),),
                    ],
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
                    height: SizeConfig.screenwidth*0.15,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "\$",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth * 0.06,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: SizeConfig.screenwidth / 1.5,
                          height: SizeConfig.screenheight / 14,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.screenwidth * 0.03,
                                right: SizeConfig.screenwidth * 0.03),
                            child: Center(
                              child: TextField(
                                style: TextStyle(
                                    color: Color(0xFFCDCDCD),
                                    fontSize: SizeConfig.screenwidth * 0.034),
                                decoration: new InputDecoration(
                                  hintText: "Amount in dollars",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF8692A6),
                                      fontSize: SizeConfig.screenwidth * 0.034),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFF8692A6)),
                                  ),


                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.05,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "N",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth * 0.06,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: SizeConfig.screenwidth / 1.5,
                          height: SizeConfig.screenheight / 14,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.screenwidth * 0.03,
                                right: SizeConfig.screenwidth * 0.03),
                            child: Center(
                              child: TextField(
                                style: TextStyle(
                                    color: Color(0xFFCDCDCD),
                                    fontSize: SizeConfig.screenwidth * 0.034),
                                decoration: new InputDecoration(
                                  hintText: "Amount in Naira",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF8692A6),
                                      fontSize: SizeConfig.screenwidth * 0.034),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFF8692A6)),
                                  ),


                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.05,
                  ),
                  Center(
                    child: Text(
                      "Our exchange rate: \$1.00 at N425:1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth * 0.034,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.15,
                  ),
                  CustomButton("Proceed", (){

                    showModalBottomSheet(context: context,builder: (context){

                      return Container(

                          height: SizeConfig.screenheight/4,
                          width: SizeConfig.screenwidth,
                          color: ColorData.onboardingbackground,
                          child: Padding(
                            padding:  EdgeInsets.all(SizeConfig.screenwidth*0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(

                                  child: ListTile(
                                    title: Text("Add Funds From Bank",style: TextStyle(
                                        color: Color(0xFF8692A6),
                                        fontWeight: FontWeight.w600,
                                        fontSize: SizeConfig.screenwidth * 0.040),),
                                    trailing: IconButton(icon: Icon(Icons.account_balance,color: Colors.white,), onPressed: (){}),
                                  ),
                                  onTap: (){
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
                                                Text("Add Funds From Bank",style: TextStyle(
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
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          Text("Select an Account",style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: SizeConfig.screenwidth * 0.036),),

                                                          CustomTextFieldWithSuffixIcon("Please Select", Icons.arrow_drop_down, Colors.white),

                                                          Text("+ add new bank account",style: TextStyle(
                                                              color: Color(0xFF478BFF),
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: SizeConfig.screenwidth * 0.040),),
                                                          SizedBox(
                                                            height: SizeConfig.screenwidth*0.02,
                                                          ),
                                                          CustomButton("Continue", (){

                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirm()));
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
                                    },);
                                  },

                                ),
                                Divider(
                                  color: Color(0xFF8692A6),
                                ),
                                GestureDetector(
                                  child:ListTile(
                                    title: Text("Add Funds From Card",style: TextStyle(
                                        color: Color(0xFF8692A6),
                                        fontWeight: FontWeight.w600,
                                        fontSize: SizeConfig.screenwidth * 0.040),),
                                    trailing: IconButton(icon: Icon(Icons.credit_card,color: Colors.white,), onPressed: (){}),
                                  ),
                                  onTap: (){
                                    showModalBottomSheet(context: context,builder: (context){
                                      return Container(

                                          height: SizeConfig.screenheight/2.8,
                                          width: SizeConfig.screenwidth,
                                          color: ColorData.onboardingbackground,
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: SizeConfig.screenwidth * 0.05,
                                              ),
                                              Text("Add Funds From Card",style: TextStyle(
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
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Text("Select an Account",style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: SizeConfig.screenwidth * 0.036),),

                                                        CustomTextFieldWithSuffixIcon("Please Select", Icons.arrow_drop_down, Colors.white),

                                                        Text("+ add new bank account",style: TextStyle(
                                                            color: Color(0xFF478BFF),
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: SizeConfig.screenwidth * 0.040),),
                                                        SizedBox(
                                                          height: SizeConfig.screenwidth*0.02,
                                                        ),
                                                        CustomButton("Continue", (){

                                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirm()));                                                            }),

                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                      );
                                    },);
                                  },
                                ),

                              ],
                            ),
                          )
                      );
                    });

                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
