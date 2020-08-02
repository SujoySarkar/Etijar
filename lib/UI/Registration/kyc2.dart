import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Registration/kyc3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../allstrings.dart';
import '../sizeconfig.dart';

class KycTwo extends StatelessWidget {

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
                    StepTextWidget(StringData.step2),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    Divider(
                      color: Colors.white24,
                    ),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    TextFieldTitle("Government ID Verification"),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(

                          width: SizeConfig.screenwidth/2.4,
                          child: CustomTextFieldWithSuffixIcon("National ID",Icons.arrow_drop_down,Color(0xFFDADADA)),
                        ),
                        Container(

                          width: SizeConfig.screenwidth/2.4,
                          child: CustomTextField("Reg Number"),

                        ),
                      ],
                    ),
                    SizedBox(
                      height: itemspace,
                    ),
                    TextFieldTitle("Upload Bank Statement"),
                    SizedBox(
                      height: space_between_title_textField,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD0E2FF),
                        borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.015,),),
                      ),
                      child: ListTile(

                        leading: Icon(Icons.insert_drive_file,color: Colors.green,),
                        title: Text("Official Statement of Account",style: TextStyle(fontWeight: FontWeight.w600,),),
                        subtitle: Text("(png,jpg format only)",style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenwidth * 0.3,
                    ),
                    CustomButton("Save & Continue", (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>KycThree()));}),
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
