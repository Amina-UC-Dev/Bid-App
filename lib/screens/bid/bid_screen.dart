import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:bid_app/screens/bid/widgets/hot_picks.dart';
import 'package:bid_app/screens/bid/widgets/interested_in.dart';
import 'package:bid_app/screens/bid/widgets/side_by_categories.dart';
import 'package:bid_app/screens/bid/widgets/side_by_series.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BIdScreen extends StatelessWidget {
  const BIdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: g1,
      appBar: AppBar(
        backgroundColor: g1,
        elevation: 0,
        titleSpacing: 0,
        leading: Icon(
          Icons.menu,
          color: black,
        ),
        title: Text(
          "Bid",
          style: TextStyle(color: black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 45,
                child: CommonButton(
                  title: "My Bids",
                  onT: () {},
                )),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: g4,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            child: Icon(
              Icons.search,
              color: white,
              size: 20,
            ),
            radius: 15,
            backgroundColor: primary,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Consumer<BidProvider>(
          builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Interested in",
                    style: Style()
                        .textStyle(size: 15, w: FontWeight.w600, color: g7),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InterestedIn(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hot picks",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: g7),
                          ),
                          Text(
                            " (250)",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: primary),
                          ),
                        ],
                      ),
                      Text(
                        "See All",
                        style: Style().textStyle(
                            size: 13, w: FontWeight.w700, color: primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "No bids placed",
                    style: Style()
                        .textStyle(size: 12, w: FontWeight.w600, color: g6),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                HotPicks(color: Colors.red.shade600),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Side by series",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: g7),
                          ),
                          Text(
                            " (25)",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: primary),
                          ),
                        ],
                      ),
                      Text(
                        "See All",
                        style: Style().textStyle(
                            size: 13, w: FontWeight.w700, color: primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SideByCategories(),
                SideBySeries(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Trending in market",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: g7),
                          ),
                          Text(
                            " (250)",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: primary),
                          ),
                        ],
                      ),
                      Text(
                        "See All",
                        style: Style().textStyle(
                            size: 13, w: FontWeight.w700, color: primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "No bids placed",
                    style: Style()
                        .textStyle(size: 12, w: FontWeight.w600, color: g6),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                HotPicks(color: Colors.red.shade600),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Be the first bid",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: g7),
                          ),
                          Text(
                            " (250)",
                            style: Style().textStyle(
                                size: 15, w: FontWeight.w600, color: primary),
                          ),
                        ],
                      ),
                      Text(
                        "See All",
                        style: Style().textStyle(
                            size: 13, w: FontWeight.w700, color: primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "No bids placed",
                    style: Style()
                        .textStyle(size: 12, w: FontWeight.w600, color: g6),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                HotPicks(color: Colors.teal.shade500),
                SizedBox(
                  height: 30,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
