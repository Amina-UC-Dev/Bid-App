import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fields{

  RxBool showPass = true.obs;

  normalTextField({required String hint}){
    return SizedBox(height: 50,
      child: TextField(
        cursorColor: primary,
        decoration: InputDecoration(
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: g3)
            ),focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: primary)
        ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: hint,
            hintStyle: Style().textStyle(size: 14, w: FontWeight.w500, color: g6)
        ),
      ),
    );
  }

  passwordTextField({required String hint}){
    return SizedBox(height: 50,
      child: Obx(() => TextField(
        obscureText: showPass.value,
        cursorColor: primary,
        decoration: InputDecoration(
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: g3)
            ),focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: primary)
        ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: hint,
            hintStyle: Style().textStyle(size: 14, w: FontWeight.w500, color: g6),
          suffixIcon: IconButton(onPressed: (){
            showPass.value = !showPass.value;
          },icon: Icon(showPass.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,color: g6,size: 20,),)
        ),
      )),
    );
  }

  detailTextField({required String hint,required FocusNode focus}){
    return SizedBox(height: 35,
      child: TextField(
        cursorColor: primary,
        focusNode: focus,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: g3)
            ),focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: primary)
        ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: hint,
            hintStyle: Style().textStyle(size: 12, w: FontWeight.w500, color: g4),suffixIconConstraints: BoxConstraints(minWidth: 35),
          suffixIcon: Text("AED",style: Style().textStyle(size: 12, w: FontWeight.w600, color: g7),)
        ),
      ),
    );
  }
}