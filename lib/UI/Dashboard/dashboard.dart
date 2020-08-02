import 'package:etijar/UI/CustomWidget/draweritem.dart';
import 'package:etijar/UI/CustomWidget/reusableCategories.dart';
import 'package:etijar/UI/CustomWidget/reusableStocks.dart';
import 'package:etijar/UI/Dashboard/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class DashBoard extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  double itemspace = SizeConfig.screenwidth * 0.035;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.onboardingbackground  ,
      drawer: Drawer(
      child: Scaffold(
        backgroundColor: ColorData.onboardingbackground  ,
        body: SafeArea(child: Padding(
          padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.05,top: SizeConfig.screenwidth*0.1,right: SizeConfig.screenwidth*0.05),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: SizeConfig.screenwidth*0.10,
                  child: Image.asset("images/circleimg.png"),
                ),
                SizedBox(height: space_between_title_textField,),
                Text("Precious Ogar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: SizeConfig.screenwidth*0.04),),
                SizedBox(height: SizeConfig.screenwidth*0.01,),
                Text("name@mail.com",style: TextStyle(color: Color(0xFF8692A6),fontWeight: FontWeight.w600,fontSize: SizeConfig.screenwidth*0.028),),
                SizedBox(height: space_between_title_textField,),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(height: space_between_title_textField,),
                Text("Menu",style: TextStyle(color: Color(0xFF8692A6),fontWeight: FontWeight.w600,fontSize: SizeConfig.screenwidth*0.036),),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.home,"Home"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.rss_feed,"Investment Portfolio"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.lightbulb_outline,"My Savings"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.card_travel,"Loans (Quad Hasn & Mudabarah)"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.notifications_none,"Notifications"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.favorite_border,"Watchhlist"),
                SizedBox(height: space_between_title_textField,),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(height: space_between_title_textField,),
                Text("My Account",style: TextStyle(color: Color(0xFF8692A6),fontWeight: FontWeight.w600,fontSize: SizeConfig.screenwidth*0.036),),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.security,"Security"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.credit_card,"Cards & Banks"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.people_outline,"Beneficiaries"),
                SizedBox(height: space_between_title_textField,),
                DrawerItem(Icons.headset_mic,"Help & Support"),
                SizedBox(height: SizeConfig.screenwidth*0.1,),

                Text("eTijar V.1.0.0",style: TextStyle(color: Color(0xFF8692A6),fontWeight: FontWeight.w600,fontSize: SizeConfig.screenwidth*0.036),),
                SizedBox(height: space_between_title_textField,),








              ],
            ),
          ),
        ),),
      ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
        flexibleSpace: Container(

          child: Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,),
            child: Align(
              alignment: Alignment.bottomCenter,
                child: Divider(color: Color(0xFF8692A6),)),
          ),
        )

      ),
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
              padding: EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: space_between_title_textField,),
                  Container(
                    width: SizeConfig.screenwidth,
                    height: SizeConfig.safeBlockVertical*16,
                    decoration: BoxDecoration(
                      color: Color(0xFF1F3151),
                      borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(SizeConfig.screenwidth*0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("TOTAL PORTFOLIO BALANCE",style: TextStyle(
                            color: Color(0xFF478BFF),
                            fontSize: SizeConfig.screenwidth*0.028,
                            fontWeight: FontWeight.w500,

                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("\$57,689.19",style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenwidth*0.055,
                                fontWeight: FontWeight.w500,

                              ),),
                              Container(
                                height: SizeConfig.screenheight*0.053,
                                width: SizeConfig.screenwidth*0.35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white30),
                                  borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.01),),
                                ),
                                child: Center(child: Text("VIEW PORTFOLIO",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.screenwidth*0.028,
                                  fontWeight: FontWeight.w500,

                                )),),
                              ),

                            ],
                          ),
                          RichText(text: TextSpan(
                              text: "Portfolio Value:",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.028,
                            fontWeight: FontWeight.w500,

                          ),
                            children: [
                              TextSpan(
                                text: "\$842.46 (4.93%)",style: TextStyle(
                                color: Color(0xFF28CC84),
                                fontSize: SizeConfig.screenwidth*0.028,
                                fontWeight: FontWeight.w500,

                              ),
                              )
                            ]

                          ),),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                      color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Top Stocks For You",style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth*0.045,
                        fontWeight: FontWeight.w500,

                      ),),
                      Text("Show More",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontSize: SizeConfig.screenwidth*0.04,
                        fontWeight: FontWeight.w500,

                      ),),
                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                      ReusableStock("AMZN","Amazon.com","images/amazon.png","\$3.13","4.33%",(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                      }),
                      SizedBox(width: space_between_title_textField,),
                      ReusableStock("XOM","Exxon Mobil.","images/exon.png","\$3.15","4.23%",(){}),
                        SizedBox(width: space_between_title_textField,),
                      ReusableStock("FCOM","Fidelity MSCI Tel.","images/fidelity.png","\$2.15","3.23%",(){}),

                      ],
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Categories",style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth*0.045,
                        fontWeight: FontWeight.w500,

                      ),),
                      Text("Show More",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontSize: SizeConfig.screenwidth*0.04,
                        fontWeight: FontWeight.w500,

                      ),),
                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReusableCategory(Colors.green, "images/catone.png", "Hala Stocks &", "ETFs"),
                        SizedBox(width: space_between_title_textField,),
                        ReusableCategory(Colors.purple, "images/cattwo.png", "OIl & Gas", "Stocks"),
                        SizedBox(width: space_between_title_textField,),
                        ReusableCategory(Colors.orange, "images/catthree.png", "Real Estate", "ETFs"),
                        SizedBox(width: space_between_title_textField,),
                        ReusableCategory(Colors.redAccent, "images/catfour.png", "Dividend", "Stocks"),
                      ],
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Popular Stocks",style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth*0.045,
                        fontWeight: FontWeight.w500,

                      ),),
                      Text("Show More",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontSize: SizeConfig.screenwidth*0.04,
                        fontWeight: FontWeight.w500,

                      ),),
                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReusableStock("AMZN","Amazon.com","images/amazon.png","\$3.13","4.33%",(){}),
                        SizedBox(width: space_between_title_textField,),
                        ReusableStock("XOM","Exxon Mobil.","images/exon.png","\$3.15","4.23%",(){}),
                        SizedBox(width: space_between_title_textField,),
                        ReusableStock("FCOM","Fidelity MSCI Tel.","images/fidelity.png","\$2.15","3.23%",(){}),

                      ],
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Our Services",style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth*0.045,
                        fontWeight: FontWeight.w500,

                      ),),
                      Text("Show More",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontSize: SizeConfig.screenwidth*0.04,
                        fontWeight: FontWeight.w500,

                      ),),
                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: SizeConfig.screenwidth/1.7,
                          height: SizeConfig.screenheight/10,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(SizeConfig.screenwidth*0.03),
                            child: ListTile(
                              leading: Container(
                                height: SizeConfig.screenwidth*0.07,
                                width: SizeConfig.screenwidth*0.07,
                                  child: Image.asset("images/servicesone.png")),
                              title: Text("Apply for Qard Hasn (Benevolent Loan)",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: SizeConfig.screenwidth*0.034),),
                            ),

                          ),
                        ),
                        SizedBox(width: space_between_title_textField,),
                        Container(
                          width: SizeConfig.screenwidth/1.7,
                          height: SizeConfig.screenheight/10,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(SizeConfig.screenwidth*0.03),
                            child: ListTile(
                              leading: Container(
                                  height: SizeConfig.screenwidth*0.07,
                                  width: SizeConfig.screenwidth*0.07,
                                  child: Image.asset("images/servicestwo.png")),
                              title: Text("Open Savings",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: SizeConfig.screenwidth*0.034),),
                            ),

                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Latest Info",style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth*0.045,
                        fontWeight: FontWeight.w500,

                      ),),
                      Text("Show More",style: TextStyle(
                        color: Color(0xFF8692A6),
                        fontSize: SizeConfig.screenwidth*0.04,
                        fontWeight: FontWeight.w500,

                      ),),
                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Container(
                    width: SizeConfig.screenwidth,
                    height: SizeConfig.screenheight/10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Container(
                            //height: SizeConfig.screenwidth*0.07,
                            //width: SizeConfig.screenwidth*0.07,
                            child: Image.asset("images/infoimgone.png")),
                        title: Text("Stocks to watch on the Nigerian Stock Exchange WTD May 20,2019 - Nairametrics",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: SizeConfig.screenwidth*0.032),),
                        subtitle: Text("Mon 20 May, 2019",style: TextStyle(fontSize: SizeConfig.screenwidth*0.025),),
                      ),
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Container(
                    width: SizeConfig.screenwidth,
                    height: SizeConfig.screenheight/10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Container(
                            //height: SizeConfig.screenwidth*0.07,
                            //width: SizeConfig.screenwidth*0.07,
                            child: Image.asset("images/infoimgtwo.png")),
                        title: Text("Stocks to watch on the Nigerian Stock Exchange WTD May 20,2019 - Nairametrics",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: SizeConfig.screenwidth*0.032),),
                        subtitle: Text("Mon 20 May, 2019",style: TextStyle(fontSize: SizeConfig.screenwidth*0.025),),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenwidth/3,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





