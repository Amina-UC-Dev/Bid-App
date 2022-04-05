import 'package:bid_app/screens/main/main/main_screen.dart';
import 'package:bid_app/screens/onboarding/buying_interest.dart';
import 'package:bid_app/screens/onboarding/preferred_lang.dart';
import 'package:bid_app/screens/onboarding/register.dart';
import 'package:bid_app/screens/onboarding/select_location.dart';
import 'package:bid_app/screens/onboarding/welcome_screen.dart';
import 'package:bid_app/screens/product_detail/product_detail.dart';
import 'package:flutter/material.dart';

class PageNavigation {

  gotoRegister(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
  }

  gotoSelectLocation(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectLocationScreen()));
  }

  gotoPreferredLanguages(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const PreferredLanguagesScreen()));
  }

  gotoBuyingInterest(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const BuyingInterestScreen()));
  }

  gotoMainScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
  }

  gotoProductDetail(BuildContext context,Color color) {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProductDetail(color: color,)));
  }

}
