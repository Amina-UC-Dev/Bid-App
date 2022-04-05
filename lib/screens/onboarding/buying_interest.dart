import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:bid_app/routes/routes.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:bid_app/widgets/common_dropdown.dart';
import 'package:bid_app/widgets/common_location_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuyingInterestScreen extends StatelessWidget {
  const BuyingInterestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Container(
          width: w,
          height: h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 46,
                    ),
                    Text(
                      "What are you interested in\nbuying?",
                      style: Style().textStyle(
                          size: 20, w: FontWeight.w800, color: black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "This helps up customize your experience",
                        style: Style()
                            .textStyle(size: 13, w: FontWeight.w400, color: g8),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Consumer<BidProvider>(
                  builder: (context,provider,child){
                    return Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Choose one or more device categories",
                          style: Style().textStyle(
                              size: 17, w: FontWeight.w500, color: g9),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("phone")){
                                  provider.removeSelectedInterest("phone");
                                }else{
                                  provider.addSelectedInterest("phone");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/phone1.png",height: 70
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("phone") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Smartphone",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("lap")){
                                  provider.removeSelectedInterest("lap");
                                }else{
                                  provider.addSelectedInterest("lap");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/lap.png",height: 45
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("lap") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Laptop",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("watch")){
                                  provider.removeSelectedInterest("watch");
                                }else{
                                  provider.addSelectedInterest("watch");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,

                                        decoration: BoxDecoration(
                                            color: white,
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/watch.png",height: 70
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("watch") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Smartwatch",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("tab")){
                                  provider.removeSelectedInterest("tab");
                                }else{
                                  provider.addSelectedInterest("tab");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/tab.png",height: 45
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("tab") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Tablet",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: w / 1.9,
                      color: primary,
                      height: 3,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 45,
                        width: w,
                        child: CommonButton(
                          title: "Next",
                          onT: () {
                            PageNavigation().gotoMainScreen(context);
                          },
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Text(
                          "Go back",
                          style: Style().textStyle(
                              size: 14, w: FontWeight.w700, color: primary),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
          desktop: (BuildContext context) => Container(
          width: w,
          height: h,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: w/3.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "What are you interested in\nbuying?",
                      style: Style().textStyle(
                          size: 20, w: FontWeight.w800, color: black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "This helps up customize your experience",
                        style: Style()
                            .textStyle(size: 13, w: FontWeight.w400, color: g8),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Consumer<BidProvider>(
                  builder: (context,provider,child){
                    return Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Choose one or more device categories",
                          style: Style().textStyle(
                              size: 17, w: FontWeight.w500, color: g9),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("phone")){
                                  provider.removeSelectedInterest("phone");
                                }else{
                                  provider.addSelectedInterest("phone");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/phone1.png",height: 70
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("phone") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Smartphone",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("lap")){
                                  provider.removeSelectedInterest("lap");
                                }else{
                                  provider.addSelectedInterest("lap");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/lap.png",height: 45
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("lap") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Laptop",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("watch")){
                                  provider.removeSelectedInterest("watch");
                                }else{
                                  provider.addSelectedInterest("watch");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,

                                        decoration: BoxDecoration(
                                            color: white,
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/watch.png",height: 70
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("watch") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Smartwatch",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                if(provider.selectedInterest.contains("tab")){
                                  provider.removeSelectedInterest("tab");
                                }else{
                                  provider.addSelectedInterest("tab");
                                }
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: g3,)
                                        ),
                                        child: Center(
                                          child: Image.asset("assets/tab.png",height: 45
                                            ,),
                                        ),
                                      ),
                                      Container(height: 80,width: 80,clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: provider.selectedInterest.contains("tab") ? primary.withOpacity(.2) : Colors.transparent,
                                            border: Border.all(color: g3,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "Tablet",
                                    style: Style()
                                        .textStyle(size: 14, w: FontWeight.w500, color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: w / 4,
                      color: primary,
                      height: 3,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 45,
                        width: w,
                        child: CommonButton(
                          title: "Next",
                          onT: () {
                            PageNavigation().gotoMainScreen(context);
                          },
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Text(
                          "Go back",
                          style: Style().textStyle(
                              size: 14, w: FontWeight.w700, color: primary),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        )
      ),
    );
  }
}
