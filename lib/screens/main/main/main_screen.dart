import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:bid_app/screens/bid/bid_screen.dart';
import 'package:bid_app/screens/main/bottom_nav/bottom_nav.dart';
import 'package:bid_app/screens/more/more_screen.dart';
import 'package:bid_app/screens/my_deals/my_deals_screen.dart';
import 'package:bid_app/screens/sell/sell_screen.dart';
import 'package:bid_app/screens/trends/trends_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);


  Widget callPage(int current) {
    switch (current) {
      case 0:
        return const BIdScreen();
      case 1:
        return const MyDealsScreen();
      case 2:
        return const SellScreen();
      case 3:
        return const TrendsScreen();
      case 4:
        return const BIdScreen();
      default:
        return const BIdScreen();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<BidProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          bottomNavigationBar: const BottomNavBar(),
          body: callPage(provider.bottomIndex),
        );
      },
    );
  }
}
