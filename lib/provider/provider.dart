import 'package:bid_app/models/language.dart';
import 'package:bid_app/widgets/common_dropdown.dart';
import 'package:flutter/material.dart';

class BidProvider extends ChangeNotifier {
  int selectedLocation = 0;
  int bottomIndex = 0;
  int selInterest = 0;
  int selectedSideBy = 0;

  List<String> selectedInterest = [];

 List<String> interestedCategories = ["All","Iphone","Laptop","Tablet","Smartwatch"];
 List<String> sideBySeriesCategories = ["Iphone","Samsung","Huawai","Oppo","Oneplus"];

 void changeInterestTab(int val){
   selInterest = val;
   notifyListeners();
 }

 void changeSideByTab(int val){
   selectedSideBy = val;
   notifyListeners();
 }

  List<Languages> languages = [
    Languages(
      name: "English",
      image: "assets/united-states.png",
    ),
    Languages(
      name: "Arabic",
      image: "assets/uae.png",
    ),
    Languages(
      name: "Chinese",
      image: "assets/china.png",
    ),
  ];

  Languages? selectedLang;

  void changeLanguage(Languages val) {
    selectedLang = val;
    notifyListeners();
  }

  void changeLocation(int val) {
    selectedLocation = val;
    notifyListeners();
  }

  void addSelectedInterest(String val) {
    selectedInterest.add(val);
    notifyListeners();
    print("SELECTED INTEREWST : " + selectedInterest.toString());
  }

  void removeSelectedInterest(String val) {
    selectedInterest.remove(val);
    notifyListeners();
  }

  void changeBottomIndex(int index) {
    bottomIndex = index;
    notifyListeners();
  }
}
