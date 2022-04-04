import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/routes/routes.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:bid_app/widgets/common_location_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                      "Select location",
                      style: Style()
                          .textStyle(size: 20, w: FontWeight.w800, color: black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Let's have a quick setup to customize your\nexperience.\nChoose your location below",
                        style: Style()
                            .textStyle(size: 13, w: FontWeight.w400, color: g8),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LocationTile(
                      title: "United Arab Emirates",
                      image: "assets/uae.png",
                      subTitle: "الإمارات العربية المتحدة",
                      type: 0,
                    ),
                    LocationTile(
                      title: "Oman",
                      image: "assets/oman.png",
                      subTitle: "سلطنة عمان",
                      type: 1,
                    ),
                    LocationTile(
                      title: "Kuwait",
                      image: "assets/kuwait.png",
                      subTitle: "الكويت",
                      type: 2,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(width: w/1.9,color: g4,height: 3,
                    child: Row(
                      children: [
                        Container(width: (w/1.9)/3,height: 3,color: primary,),
                        Container(width:(w/1.9) - (w/1.9)/3,height: 3,color: g4,),
                      ],
                    ),),
                    SizedBox(height: 25,),
                    Container(
                        height: 45,
                        width: w,
                        child: CommonButton(
                          title: "Next",
                          onT: () {
                            PageNavigation().gotoPreferredLanguages(context);
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
    );
  }
}
