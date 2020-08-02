import 'package:etijar/UI/CustomWidget/draweritem.dart';
import 'package:etijar/UI/CustomWidget/reusableCategories.dart';
import 'package:etijar/UI/CustomWidget/reusableStocks.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/allstrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';
import 'buystocks.dart';

class Details extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
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
              padding: EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: itemspace,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: <Widget>[
                      Container(
                          width: SizeConfig.screenwidth*0.2,
                          height: SizeConfig.screenheight*0.06,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                splashColor: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                child: Container(
                                  width: SizeConfig.screenwidth*0.2,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.arrow_back_ios,color: Color(0xFF8692A6),size: SizeConfig.screenwidth*0.05,),
                                      SizedBox(width: space_between_title_textField,),
                                      Text("Back",style: TextStyle(
                                          color: Color(0xFF8692A6),
                                          fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.043
                                      ),)
                                    ],
                                  ),
                                ),
                              ))),
                      Container(
                        height: SizeConfig.screenheight*0.07,
                        width: SizeConfig.screenwidth*0.18,
                        child: Image.asset("images/amazon.png",fit: BoxFit.fill,),
                      ),
                      Container(
                          width: SizeConfig.screenwidth*0.2,
                          height: SizeConfig.screenheight*0.06,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              child: InkWell(
                                onTap: (){},
                                splashColor: Colors.transparent,
                                borderRadius: BorderRadius.all(Radius.circular(5)),

                              ))),

                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Center(
                    child: Text("AMZN",style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.screenwidth*0.055,
                      fontWeight: FontWeight.w500,

                    ),),
                  ),
                  SizedBox(height: SizeConfig.screenwidth*0.005,),
                  Center(
                    child: Text("Amazon.com",style: TextStyle(
                        color: Color(0xFFCDCDCD),
                        fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.043
                    ),),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text(StringData.detailspagedes,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.032
                  ),),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Row(

                    children: <Widget>[
                     Container(
                       height: SizeConfig.safeBlockHorizontal*9,
                       width: SizeConfig.safeBlockVertical*9,
                       child: Center(
                         child: Text("Daily",style: TextStyle(
                             color: Colors.blue,
                             fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.028
                         ),),
                       ),
                       decoration: BoxDecoration(
                         color: Color(0xFF1F3151),
                         borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.01),),
                       ),
                     ) ,
                     Container(
                       height: SizeConfig.safeBlockHorizontal*9,
                       width: SizeConfig.safeBlockVertical*9,
                       child: Center(
                         child: Text("Months",style: TextStyle(
                             color: Color(0xFF8692A6),
                             fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.028
                         ),),
                       ),

                     ) ,
                     Container(
                       height: SizeConfig.safeBlockHorizontal*9,
                       width: SizeConfig.safeBlockVertical*9,
                       child: Center(
                         child: Text("Quaters",style: TextStyle(
                             color: Color(0xFF8692A6),
                             fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.028
                         ),),
                       ),

                     ) ,
                     Container(
                       height: SizeConfig.safeBlockHorizontal*9,
                       width: SizeConfig.safeBlockVertical*9,
                       child: Center(
                         child: Text("Halfs",style: TextStyle(
                             color: Color(0xFF8692A6),
                             fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.028
                         ),),
                       ),

                     ) ,
                     Container(
                       height: SizeConfig.safeBlockHorizontal*9,
                       width: SizeConfig.safeBlockVertical*9,
                       child: Center(
                         child: Text("Tears",style: TextStyle(
                             color: Color(0xFF8692A6),
                             fontWeight: FontWeight.w400,fontSize: SizeConfig.screenwidth*0.028
                         ),),
                       ),

                     ) ,
                    ],
                  ),
                  Container(
                    height: SizeConfig.screenheight/5,
                    width: SizeConfig.screenwidth,
                    child: Image.asset("images/gp.png",fit: BoxFit.fill,)
                  ),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text("More Details",style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenwidth*0.045,
                    fontWeight: FontWeight.w500,

                  ),),
                  SizedBox(height: space_between_title_textField,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Market Status",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("Opened",style: TextStyle(
                            color: Colors.green,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Sharia Compliance",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("Yes",style: TextStyle(
                            color: Colors.green,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Sector",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("FCMG",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Compliance",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("Yes",style: TextStyle(
                            color: Colors.green,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Prev Dividend",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("\$25.08",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("EPS",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("\$4.49%",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Prev Close",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("\$19.89",style: TextStyle(
                            color: Colors.green,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Vol.(24HRS)",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("42,181",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Value",style: TextStyle(
                            color: Color(0xFF8692A6),
                            fontSize: SizeConfig.screenwidth*0.035,
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: SizeConfig.screenheight*0.005,),
                          Text("\$10.1M",style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.screenwidth*0.045,
                            fontWeight: FontWeight.w500,

                          ),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: itemspace,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text("Latest News",style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenwidth*0.045,
                    fontWeight: FontWeight.w500,

                  ),),
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
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  Text("Similar Stocks",style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenwidth*0.045,
                    fontWeight: FontWeight.w500,

                  ),),
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
                  SizedBox(height: SizeConfig.screenwidth*0.08,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                  Container(
                  height: SizeConfig.safeBlockVertical*7,
                      width: SizeConfig.screenwidth/1.35,
                      decoration: BoxDecoration(
                        color: Color(0xFF051F0E),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Material(
                          color: Color(0xFF478BFF),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyStocks()));
                            },
                            splashColor: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Center(
                              child: Text(
                                "Buy Stock",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize:SizeConfig.screenwidth*0.04
                                ),
                              ),
                            ),
                          ))),
                  Container(
                  height: SizeConfig.safeBlockVertical*7,
                      width: SizeConfig.screenwidth/8,
                      decoration: BoxDecoration(
                        color: Color(0xFF051F0E),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Material(
                          color: Color(0xFF478BFF),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: InkWell(
                            onTap: (){},
                            splashColor: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Center(
                              child: IconButton(icon: Icon(Icons.favorite_border,color: Colors.white,), onPressed: (){}),
                            ),
                          ))),

                    ],
                  ),
                  SizedBox(height: SizeConfig.screenwidth*0.5,),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





