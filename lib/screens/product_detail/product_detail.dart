import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:bid_app/widgets/common_textfield.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key, required this.color}) : super(key: key);

  Color color;

  List<String> images = [
    "assets/phone4.png",
    "assets/phone2.png",
    "assets/phone1.png",
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<BidProvider>(
            builder: (context, provider, child) {
              return ScreenTypeLayout.builder(
                mobile: (BuildContext context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: w,
                            height: w / 2,
                            color: g1,
                            child: Swiper(
                              viewportFraction: .9,
                              index: 0,
                              itemWidth: w / 1.2,
                              pagination: SwiperPagination(
                                margin: EdgeInsets.all(6),
                              ),
                              containerWidth: w / 1.2,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Center(
                                        child: Image.asset(
                                          images[index],
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                );
                              },
                              itemCount: images.length,
                              // pagination: SwiperPagination(),
                              // control: SwiperControl(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          decoration: BoxDecoration(
                              color: color.withOpacity(.15),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 3),
                            child: Text(
                              "Hot Bid",
                              style: Style().textStyle(
                                  size: 12, w: FontWeight.w600, color: color),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apple iPhone 12, 16GB",
                          style: Style().textStyle(
                              size: 20, w: FontWeight.w800, color: black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "TOP BID",
                          style: Style().textStyle(
                              size: 11, w: FontWeight.w500, color: g8),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "3000 ",
                              style: Style().textStyle(
                                  size: 18, w: FontWeight.w800, color: black),
                            ),
                            Text(
                              "AED",
                              style: Style().textStyle(
                                  size: 13, w: FontWeight.w500, color: g8),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Place bid",
                          style: Style().textStyle(
                              size: 13, w: FontWeight.w500, color: g5),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RowTile(
                            title: "3050 AED",
                            current: 1,
                            onT: () {
                              provider.changeDetailRadio(1);
                              provider.focusNode1();
                            }),
                        Fields().detailTextField(
                            hint: "min 200", focus: provider.focus1),
                        InkWell(
                          onTap: () {
                            provider.changeDetailRadio(2);
                            provider.focusNode2();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            child: Row(
                              children: [
                                Icon(
                                  provider.detailRadioIndex == 2
                                      ? Icons.radio_button_checked
                                      : Icons.radio_button_off,
                                  color: provider.detailRadioIndex == 2
                                      ? primary
                                      : g4,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Set autobid value",
                                  style: Style().textStyle(
                                      size: 14,
                                      w: FontWeight.w600,
                                      color: provider.detailRadioIndex == 2
                                          ? primary
                                          : g6),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.info_outline,
                                  color: g5,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                        Fields().detailTextField(
                            hint: "min 200", focus: provider.focus2),
                        RowTile(
                            title: "Custom",
                            current: 3,
                            onT: () {
                              provider.changeDetailRadio(3);
                            }),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Desired monthly quantity",
                              style: Style().textStyle(
                                  size: 13, w: FontWeight.w500, color: g5),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info_outline,
                              color: g5,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: g2,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          height: 33,
                          child: Text("+ Tap to add"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Opacity(
                          opacity: .4,
                          child: Container(
                              height: 45,
                              width: w,
                              child: CommonButton(
                                title: "Place bid 3050 AED",
                                onT: () {
                                },
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                desktop: (BuildContext context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: w,
                            height: 250,
                            color: g1,
                            child: Swiper(
                              viewportFraction: .9,
                              index: 0,
                              itemWidth: w / 1.2,
                              pagination: SwiperPagination(
                                margin: EdgeInsets.all(6),
                              ),
                              containerWidth: w / 1.2,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Center(
                                        child: Image.asset(
                                          images[index],
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                );
                              },
                              itemCount: images.length,
                              // pagination: SwiperPagination(),
                              // control: SwiperControl(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          decoration: BoxDecoration(
                              color: color.withOpacity(.15),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 3),
                            child: Text(
                              "Hot Bid",
                              style: Style().textStyle(
                                  size: 12, w: FontWeight.w600, color: color),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                     EdgeInsets.only(left: w/3.5, right: w/3.5, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apple iPhone 12, 16GB",
                          style: Style().textStyle(
                              size: 20, w: FontWeight.w800, color: black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "TOP BID",
                          style: Style().textStyle(
                              size: 11, w: FontWeight.w500, color: g8),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "3000 ",
                              style: Style().textStyle(
                                  size: 18, w: FontWeight.w800, color: black),
                            ),
                            Text(
                              "AED",
                              style: Style().textStyle(
                                  size: 13, w: FontWeight.w500, color: g8),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Place bid",
                          style: Style().textStyle(
                              size: 13, w: FontWeight.w500, color: g5),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RowTile(
                            title: "3050 AED",
                            current: 1,
                            onT: () {
                              provider.changeDetailRadio(1);
                              provider.focusNode1();
                            }),
                        Fields().detailTextField(
                            hint: "min 200", focus: provider.focus1),
                        InkWell(
                          onTap: () {
                            provider.changeDetailRadio(2);
                            provider.focusNode2();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            child: Row(
                              children: [
                                Icon(
                                  provider.detailRadioIndex == 2
                                      ? Icons.radio_button_checked
                                      : Icons.radio_button_off,
                                  color: provider.detailRadioIndex == 2
                                      ? primary
                                      : g4,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Set autobid value",
                                  style: Style().textStyle(
                                      size: 14,
                                      w: FontWeight.w600,
                                      color: provider.detailRadioIndex == 2
                                          ? primary
                                          : g6),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.info_outline,
                                  color: g5,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                        Fields().detailTextField(
                            hint: "min 200", focus: provider.focus2),
                        RowTile(
                            title: "Custom",
                            current: 3,
                            onT: () {
                              provider.changeDetailRadio(3);
                            }),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Desired monthly quantity",
                              style: Style().textStyle(
                                  size: 13, w: FontWeight.w500, color: g5),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info_outline,
                              color: g5,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: g2,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          height: 33,
                          child: Text("+ Tap to add"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Opacity(
                          opacity: .4,
                          child: Container(
                              height: 45,
                              width: w,
                              child: CommonButton(
                                title: "Place bid 3050 AED",
                                onT: () {
                                },
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class RowTile extends StatelessWidget {
  RowTile(
      {Key? key, required this.title, required this.current, required this.onT})
      : super(key: key);

  String title;
  int current;
  Function() onT;

  @override
  Widget build(BuildContext context) {
    return Consumer<BidProvider>(
      builder: (context, provider, child) {
        return InkWell(
          onTap: onT,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            child: Row(
              children: [
                Icon(
                  current == provider.detailRadioIndex
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
                  color: current == provider.detailRadioIndex ? primary : g4,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  title,
                  style: Style().textStyle(
                      size: 14,
                      w: FontWeight.w600,
                      color:
                          current == provider.detailRadioIndex ? primary : g6),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
