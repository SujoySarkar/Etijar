import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/NavigationDrawer/watchlistempty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class PopularStocks extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  double itemspace = SizeConfig.screenwidth * 0.035;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.onboardingbackground,
      body: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight,
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
                          width: SizeConfig.screenwidth * 0.2,
                          height: SizeConfig.screenheight * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              )),),
                    ],
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Text("Popular Stocks",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(height: space_between_title_textField,),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),

                  ReusablePopularStock("images/apple.png","APPL","Apple Inc.","\$57,689.19",Color(0xFF28CC84)),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  ReusablePopularStock("images/netflix.png","NFLX","Netflix","\$57,689.19",Color(0xFF28CC84)),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  ReusablePopularStock("images/fb.png","FB","Facebook","\$57,689.19",Color(0xFFFF3B30)),

                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: SizeConfig.screenwidth*0.35,),
                  
                  CustomButton("View Watchlist", (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>Watchlist()));

                  },)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget ReusablePopularStock (String imagelink,title,subtitle,trailing,Color color){
  return ListTile(
    leading: Container(height: SizeConfig.screenheight*0.1,width: SizeConfig.screenwidth*0.1,child: Image.asset(imagelink)),
    title:Text(title,style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Colors.white,fontWeight: FontWeight.w500),),
    subtitle:Text(subtitle,style: TextStyle(
      color: Color(0xFF8692A6),
      fontSize: SizeConfig.screenwidth*0.028,
      fontWeight: FontWeight.w500,

    ),),
    trailing:Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(trailing,style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: color,fontWeight: FontWeight.w500),),
        SizedBox(width: SizeConfig.screenwidth*0.1,),
        Icon(Icons.favorite_border,color: Colors.white,size: SizeConfig.screenwidth*0.045,),
      ],
    )


  );
}