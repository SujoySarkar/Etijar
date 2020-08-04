import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/pintextfield.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Dashboard/success-one.dart';
import 'package:etijar/UI/Dashboard/success-two.dart';
import 'package:etijar/UI/Registration/kyc3.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class NewPlanStepThree extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.02;
  double itemspace = SizeConfig.screenwidth * 0.035;

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
                    height: SizeConfig.screenwidth * 0.1,
                  ),
                  PageTitle("New Savings Plan"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  PageDetails("For the purpose if industry regularion, your details are needed."),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  StepTextWidget("03 of 03 (Amount)"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Amount to Save"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("Please enter amount"),

                  SizedBox(
                    height: SizeConfig.screenwidth * 0.7,
                  ),
                  CustomButton("Fund Savings", (){
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

                                                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondSuccess()));
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

                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondSuccess()));
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
          ),
        ),
      ),
    );
  }
}
