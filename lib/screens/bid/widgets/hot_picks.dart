import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:flutter/material.dart';

class HotPicks extends StatelessWidget {

  HotPicks({required this.color});

  Color color;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(height: 290,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.only(left: index == 0 ? 20 : 10),
              child: Container(
                width: 240,
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: color.withOpacity(.15),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          child: Text(
                            "Hot Bid",
                            style: Style().textStyle(
                                size: 12,
                                w: FontWeight.w600,
                                color: color),
                          ),
                        ),
                      ),
                      Center(
                          child:
                          Image.asset("assets/phone4.png", width: 90)),
                      Center(
                          child: Text(
                            "iPhone 11 Pro, 16GB",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w800, color: black),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                          child: Container(
                              height: 30,
                              width: w,
                              child: CommonButton(
                                title: "+ Place bid at 3500 AED",
                                onT: () {
                                  // PageNavigation().gotoSelectLocation(context);
                                },
                              )),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Center(
                          child: Container(
                              height: 30,
                              // width: w,
                              child: CommonButton(
                                title: "Qty : 5",
                                onT: () {
                                  // PageNavigation().gotoSelectLocation(context);
                                },
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
