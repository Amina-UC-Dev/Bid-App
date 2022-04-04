import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 15,
      child: Consumer<BidProvider>(
        builder: (context, provider, child) {
          return Container(
            height: 60,
            // decoration: BoxDecoration(color: white, boxShadow: [BoxShadow(color: g4,spreadRadius: 2,blurRadius: 2),]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomTile(
                  title: "Bid",
                  callB: () {
                    provider.changeBottomIndex(0);
                  },
                  image: "assets/b1.png",
                  current: provider.bottomIndex == 0 ? true : false,
                ),
                BottomTile(
                  title: "My deals",
                  callB: () {
                    provider.changeBottomIndex(1);
                  },
                  image: "assets/b2.png",
                  current: provider.bottomIndex == 1 ? true : false,
                ),
                BottomTile(
                  title: "Sell",
                  callB: () {
                    provider.changeBottomIndex(2);
                  },
                  image: "assets/b3.png",
                  current: provider.bottomIndex == 2 ? true : false,
                ),
                BottomTile(
                  title: "Trends",
                  callB: () {
                    provider.changeBottomIndex(3);
                  },
                  image: "assets/b4.png",
                  current: provider.bottomIndex == 3 ? true : false,
                ),
                BottomTile(
                  title: "More",
                  callB: () {
                    provider.changeBottomIndex(4);
                  },
                  image: "assets/b5.png",
                  current: provider.bottomIndex == 4 ? true : false,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BottomTile extends StatelessWidget {
  BottomTile(
      {required this.title,
      required this.callB,
      required this.image,
      required this.current});

  Function callB;
  String title, image;
  bool current;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        callB();
        if (title == "More") {
          showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )
              ),
              builder: (BuildContext context) {
                return StatefulBuilder(
                    builder: (BuildContext context, StateSetter state) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 2, top: 2, right: 10, left: 10),
                      child: Container(width: w,
                        child: Wrap(
                          direction: Axis.vertical,
                          children: [
                            Container(width: w,height: 30,child: Center(
                              child: Container(height: 3,width: 40,color: g4,),
                            ),),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/transaction.png",height: 20,),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Transactions",
                                          style: Style().textStyle(size: 15, w: FontWeight.w800, color: black),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0,
                                        bottom: 15,
                                        right: 10,
                                        left: 15),
                                    child: Text(
                                      "Renew Package",
                                      style: Style().textStyle(size: 15, w: FontWeight.w600, color: g7),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0,
                                        bottom: 22,
                                        right: 10,
                                        left: 15),
                                    child: Text(
                                      "Share Document",
                                      style: Style().textStyle(size: 15, w: FontWeight.w600, color: g7),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ));
                });
              });
        }
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: w / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: current ? 23 : 21,
              color: current ? primary : g5,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              title,
              style: Style().textStyle(
                size: current ? 13 : 10,
                w: FontWeight.w400,
                color: current ? primary : g5,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
