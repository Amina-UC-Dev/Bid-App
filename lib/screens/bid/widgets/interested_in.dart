import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InterestedIn extends StatelessWidget {
  const InterestedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BidProvider>(builder: (context,provider,child){return Container(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: provider.interestedCategories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 20 : 2, top: 7, bottom: 7,right: 2),
              child: Container(
                height: 30,
                child: MaterialButton(
                  onPressed: () {
                    provider.changeInterestTab(index);
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color:
                  provider.selInterest == index ? primary : g1,
                  padding: EdgeInsets.zero,
                  child: Center(
                      child: Text(
                        provider.interestedCategories[index],
                        style: Style().textStyle(
                            size: 14,
                            w: FontWeight.w500,
                            color: provider.selInterest == index
                                ? white
                                : black),
                      )),
                ),
              ),
            );
          }),
    );});
  }
}
