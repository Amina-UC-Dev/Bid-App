import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBySeries extends StatelessWidget {
  const SideBySeries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 130,
      child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.only(left:index== 0 ? 20 : 10,),
              child: InkWell(
                onTap: (){
                  PageNavigation().gotoProductDetail(context,Colors.red.shade600);
                },
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: g1),
                          child: Container(
                            // height: 150,
                            // width: 200,
                              child: Center(
                                  child: Image.asset(
                                    "assets/phone2.png",
                                    width: 180,
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        Container(
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: g8.withOpacity(.5)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Iphone 7",
                            style: Style().textStyle(
                                size: 14, w: FontWeight.w600, color: white),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "3",
                            style: Style().textStyle(
                                size: 14, w: FontWeight.w600, color: white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
