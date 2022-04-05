import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/routes/routes.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:bid_app/widgets/common_dropdown.dart';
import 'package:bid_app/widgets/common_location_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PreferredLanguagesScreen extends StatelessWidget {
  const PreferredLanguagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Container(
          width: w,height: h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Choose Preferred languages",
                      style: Style()
                          .textStyle(size: 20, w: FontWeight.w800, color: black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Northladder's content is available in several languages. Select your preferred Languages below.",
                        style: Style()
                            .textStyle(size: 13, w: FontWeight.w400, color: g8),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LanguageDropDown(),
                  ],
                ),
                Column(
                  children: [
                    Container(width: w/1.9,color: g4,height: 3,
                      child: Row(
                        children: [
                          Container(width: (w/1.9)/3*2,height: 3,color: primary,),
                          Container(width:(w/1.9) - ((w/1.9)/3)*2,height: 3,color: g4,),
                        ],
                      ),),
                    SizedBox(height: 25,),
                    Container(
                        height: 45,
                        width: w,
                        child: CommonButton(
                          title: "Next",
                          onT: () {
                            PageNavigation().gotoBuyingInterest(context);
                          },
                        )),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        child: Text("Go back",style: Style().textStyle(size: 14, w: FontWeight.w700, color: primary),),
                      ),
                    ),
                    SizedBox(height: 15,),
                  ],
                )
              ],
            ),
          ),
        ),
          desktop: (BuildContext context) => Container(
          width: w,height: h,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: w/3.5),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Choose Preferred languages",
                      style: Style()
                          .textStyle(size: 20, w: FontWeight.w800, color: black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Northladder's content is available in several languages. Select your preferred Languages below.",
                        style: Style()
                            .textStyle(size: 13, w: FontWeight.w400, color: g8),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LanguageDropDown(),
                  ],
                ),
                Column(
                  children: [
                    Container(width: w/4,color: g4,height: 3,
                      child: Row(
                        children: [
                          Container(width: (w/4)/3*2,height: 3,color: primary,),
                          Container(width:(w/4) - ((w/4)/3)*2,height: 3,color: g4,),
                        ],
                      ),),
                    SizedBox(height: 25,),
                    Container(
                        height: 45,
                        width: w,
                        child: CommonButton(
                          title: "Next",
                          onT: () {
                            PageNavigation().gotoBuyingInterest(context);
                          },
                        )),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        child: Text("Go back",style: Style().textStyle(size: 14, w: FontWeight.w700, color: primary),),
                      ),
                    ),
                    SizedBox(height: 15,),
                  ],
                )
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}
