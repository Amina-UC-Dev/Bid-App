import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/routes/routes.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  List<String> images1 = [
    "assets/p3.jpg",
    "assets/w3.jpg",
    "assets/p4.jpg",
  ];
  List<String> images2 = [
    "assets/p1.jpg",
    "assets/w1.jpeg",
    "assets/p2.jpg",
    "assets/w2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(height: h,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height: w / 2.3,
                    child: Swiper(
                      viewportFraction: .6,
                      index: 0,
                      itemWidth: w / 1.2,
                      containerWidth: w / 1.2,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: w / 2.1,
                              width: w / 1.2,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset(
                                images1[index],
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                      itemCount: images1.length,
                      // pagination: SwiperPagination(),
                      // control: SwiperControl(),
                    ),
                  ),
                  Container(
                    height: w / 1.9,
                    child: Swiper(
                      viewportFraction: .5, index: 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 2 / 2,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset(
                                images2[index],
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                      itemCount: images2.length,
                      // pagination: SwiperPagination(),
                      // control: SwiperControl(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Let's get started",
                    style:
                        Style().textStyle(size: 19, w: FontWeight.w800, color: black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Open a free account in minutes right from "
                        "your\nphone, and make your money go further.",
                    style:
                        Style().textStyle(size: 14, w: FontWeight.w400, color: black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: w/6),
                child: Container(width: w/1.15,height: 45,
                  child: CommonButton(title: "Next",onT: (){
                    PageNavigation().gotoRegister(context);
                  },)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
