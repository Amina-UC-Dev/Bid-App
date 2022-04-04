import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LocationTile extends StatelessWidget {
  LocationTile({Key? key,required this.title,required this.subTitle,required this.image,required this.type}) : super(key: key);

  int type;
  String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    return  Consumer<BidProvider>(builder: (context,provider,child){
      return Column(
        children: [

          InkWell(
            onTap: (){
              provider.changeLocation(type);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(image,height: 30,),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(title,style: Style().textStyle(size: 14, w: FontWeight.w800, color: black),),
                        SizedBox(height: 4,),
                        Text(subTitle,style: Style().textStyle(size: 14, w: FontWeight.w600, color: black),)
                      ],),
                    ],
                  ),
                  Icon(type == provider.selectedLocation ? Icons.radio_button_checked : Icons.radio_button_off,color: primary,)
                ],
              ),
            ),
          ),
          Divider(color: g3,),

        ],
      );
    });
  }
}
