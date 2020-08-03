
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class CardsBanks extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Card & Banks",
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
            child: Expanded(child: BankTabBarPages()),
          ),
        ),
      ),
    );
  }
}

class BankTabBarPages extends StatelessWidget {
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
              text: "Debit/Credit Cards",
            ),
            Tab(
              text: "Bank Accounts",
            ),
          ],
        ),
        body: TabBarView(children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: itemspace,),
                Text("Mastercard",style: TextStyle(
                  color: Color(0xFF8692A6),
                  fontSize: SizeConfig.screenwidth*0.034,
                  fontWeight: FontWeight.w500,

                ),),
                SizedBox(height: space_between_title_textField,),
                Text("**** **** **** *123",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(height: space_between_title_textField,),
                Text("Verve Card",style: TextStyle(
                  color: Color(0xFF8692A6),
                  fontSize: SizeConfig.screenwidth*0.034,
                  fontWeight: FontWeight.w500,

                ),),
                SizedBox(height: space_between_title_textField,),
                Text("**** **** **** *927",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.5,
                ),
                CustomButton("Add New Card", (){
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
                SizedBox(height: itemspace,),
                Text("Tope Alabi",style: TextStyle(
                  color: Color(0xFF8692A6),
                  fontSize: SizeConfig.screenwidth*0.034,
                  fontWeight: FontWeight.w500,

                ),),
                SizedBox(height: space_between_title_textField,),
                Text("012838299. Access bank",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(height: space_between_title_textField,),
                Text("103938476. Citi Bank",style: TextStyle(
                  color: Color(0xFF8692A6),
                  fontSize: SizeConfig.screenwidth*0.034,
                  fontWeight: FontWeight.w500,

                ),),
                SizedBox(height: space_between_title_textField,),
                Text("Quadri Imran",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.5,
                ),
                CustomButton("Add New Bank", (){
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
