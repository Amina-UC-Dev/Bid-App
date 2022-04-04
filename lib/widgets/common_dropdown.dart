import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/models/language.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageDropDown extends StatelessWidget {
  LanguageDropDown({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Consumer<BidProvider>(
      builder: (context,provider,child){
        return Container(
          height: 50,
          width: w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: g3, width: 1)),
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: DropdownButton<Languages>(
              value: provider.selectedLang,
              // icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down,color: black,size: 22,),
              style:
              Style().textStyle(size: 14, w: FontWeight.w400, color: black),
              hint: Text(
                "Select",
                style: Style().textStyle(size: 14, w: FontWeight.w300, color: g8),
              ),
              underline: Container(
                height: 0,
              ),
              onChanged: (Languages? newValue) {
                provider.changeLanguage(newValue!);
              },
              items: provider.languages.map((Languages value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    children: [
                      Image.asset(value.image,height: 25,),
                      SizedBox(width: 15,),
                      Text(value.name),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}


