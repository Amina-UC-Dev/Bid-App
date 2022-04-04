import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  CommonButton({Key? key,required this.title,required this.onT}) : super(key: key);

  String title;
  Function() onT;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onT,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: primary,
      padding: EdgeInsets.zero,
      child: Text(title,style: Style().textStyle(size: 14, w: FontWeight.w400, color: white),),
    );
  }
}
