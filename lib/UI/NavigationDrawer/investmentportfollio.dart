import 'package:etijar/UI/CustomWidget/reusablelisttile.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class InvestmentPortfollio extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("My Investment Portfolio",style: TextStyle(fontSize: SizeConfig.screenwidth*0.045),),

          flexibleSpace: Container(

            child: Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(color: Color(0xFF8692A6),)),
            ),
          )

      ),
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
                  Text("TOTAL PORTFOLIO BALANCE",style: TextStyle(
                    color: Color(0xFF478BFF),
                    fontSize: SizeConfig.screenwidth*0.028,
                    fontWeight: FontWeight.w500,

                  ),),
                  SizedBox(height: space_between_title_textField,),
                  Row(

                    children: <Widget>[
                      Text("\$57,689.19",style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenwidth*0.055,
                        fontWeight: FontWeight.w500,

                      ),),
                      SizedBox(width: SizeConfig.screenwidth*0.03,),
                      Text(
                        "\$842.46 (4.93%)",style: TextStyle(
                        color: Color(0xFF28CC84),
                        fontSize: SizeConfig.screenwidth*0.028,
                        fontWeight: FontWeight.w500,

                      ),
                      )

                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text("Asset Allocation",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(height: space_between_title_textField,),
                  Row(

                    children: <Widget>[
                      Text("Total Assets",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                      SizedBox(width: SizeConfig.screenwidth*0.03,),
                      Text("4",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),


                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Center(
                    child: Container(
                      height: SizeConfig.screenheight/4,
                      width: SizeConfig.screenwidth/2,
                      child: Center(
                        child: Image.asset("images/circlechart.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: SizeConfig.screenwidth*0.034,
                              width: SizeConfig.screenwidth*0.034,
                              color: Color(0xFF0264CF),
                            ),
                            SizedBox(width: SizeConfig.screenwidth*0.025,),
                            Text("Equity",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Colors.white,fontWeight: FontWeight.w500),),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: SizeConfig.screenwidth*0.034,
                              width: SizeConfig.screenwidth*0.034,
                              color: Color(0xFF1BA9EA),
                            ),
                            SizedBox(width: SizeConfig.screenwidth*0.025,),
                            Text("Fixed Income",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Colors.white,fontWeight: FontWeight.w500),),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: SizeConfig.screenwidth*0.034,
                              width: SizeConfig.screenwidth*0.034,
                              color: Color(0xFF01058A),
                            ),
                            SizedBox(width: SizeConfig.screenwidth*0.025,),
                            Text("Cash",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Colors.white,fontWeight: FontWeight.w500),),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text("More Details",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(height: space_between_title_textField,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Equity",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                          SizedBox(height: SizeConfig.screenwidth*0.01,),

                          Text("\$75,800",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),

                          SizedBox(height: SizeConfig.screenwidth*0.006,),
                          Text("3 Assets",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Fixed Income",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                          SizedBox(height: SizeConfig.screenwidth*0.01,),

                          Text("\$53,800",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),

                          SizedBox(height: SizeConfig.screenwidth*0.006,),
                          Text("2 Assets",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Cash",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                          SizedBox(height: SizeConfig.screenwidth*0.01,),

                          Text("\$20,800",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),

                          SizedBox(height: SizeConfig.screenwidth*0.006,),
                          Text("1 Assets",style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Color(0xFF8692A6),fontWeight: FontWeight.w500),),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text("My Assets",style: TextStyle(fontSize: SizeConfig.screenwidth*0.04,color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(height: space_between_title_textField,),
                  ReusableListTile("images/apple.png","APPL","Apple Inc.","\$842.46 (4.93%)",Color(0xFF28CC84)),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  ReusableListTile("images/netflix.png","NFLX","Netflix","\$842.46 (4.93%)",Color(0xFF28CC84)),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  ReusableListTile("images/fb.png","FB","Facebook","\$842.46 (4.93%)",Color(0xFFFF3B30)),
                  Divider(
                    color: Color(0xFF8692A6),
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
