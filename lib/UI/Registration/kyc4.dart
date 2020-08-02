import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../allstrings.dart';
import '../sizeconfig.dart';
import 'createpin.dart';

class KycFour extends StatelessWidget {

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
                    SizedBox(
                      height: SizeConfig.screenwidth * 0.1,
                    ),
                    PageTitle(StringData.kyc1title),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    PageDetails(StringData.kyc1descrition),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    StepTextWidget(StringData.step4),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    Divider(
                      color: Colors.white24,
                    ),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    TextFieldTitle("Upload Profile Picture"),
                    Text("Your face must be visible in the imge",style: TextStyle(
                    color: Color(0xFF8692A6),
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenwidth*0.028),),
                    SizedBox(
                      height: SizeConfig.screenwidth*0.035,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: SizeConfig.screenwidth*0.13,
                        child: Image.asset("images/circleimg.png"),
                      ),
                    ),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    Center(child: RaisedButton(onPressed: (){},child: Text("Upload",style: TextStyle(color: Colors.white),),color: Colors.green,)),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    TextFieldTitle("Social Media"),
                    Text("Fill in one or more",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenwidth*0.028),),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    Divider(
                      color: Colors.white24,
                    ),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    TextFieldTitle("Facebook"),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    CustomTextFieldWithSuffixIcon("https://facebook.com/bola", Icons.verified_user, Colors.green),
                    SizedBox(
                      height: itemspace,
                    ),
                    TextFieldTitle("Twitter"),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    CustomTextField("Link here"),
                    SizedBox(
                      height: itemspace,
                    ),
                    TextFieldTitle("Instagram"),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    CustomTextField("Link here"),
                    SizedBox(
                      height: SizeConfig.screenwidth*0.1,
                    ),
                    CustomButton("Save & Continue", (){
                      showModalBottomSheet(context: context,builder: (context){
                        return FittedBox(
                          child: Container(
                              height: SizeConfig.screenheight/3,
                              width: SizeConfig.screenwidth,
                              color: ColorData.onboardingbackground,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: SizeConfig.screenwidth * 0.05,
                                  ),
                                  PageTitle("Transaction Pin"),
                                  SizedBox(
                                    height: space_between_title_textField,
                                  ),
                                  PageDetails("Would you like to create a pin for all"),
                                  PageDetails("transactions now?"),

                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding:  EdgeInsets.all(SizeConfig.screenwidth*0.05),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            CustomButton("Verify Account", (){
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=>CreatePin()));
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
