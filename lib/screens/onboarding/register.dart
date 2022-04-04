import 'package:bid_app/const/colors.dart';
import 'package:bid_app/const/styles.dart';
import 'package:bid_app/routes/routes.dart';
import 'package:bid_app/widgets/common_button.dart';
import 'package:bid_app/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: h - w / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 22,
                          )),
                    ),
                    Container(
                      width: w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Create with email",
                              style: Style().textStyle(
                                  size: 20, w: FontWeight.w800, color: black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "Once submitted, our customer service "
                                "team will call you to guide you the account "
                                "activation process.",
                                style: Style().textStyle(
                                    size: 13, w: FontWeight.w400, color: g8),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Fields().normalTextField(hint: "Full name"),
                            SizedBox(
                              height: 10,
                            ),
                            Fields().normalTextField(hint: "Email"),
                            SizedBox(
                              height: 10,
                            ),
                            Fields().passwordTextField(hint: "Password"),
                            SizedBox(
                              height: 10,
                            ),
                            Fields()
                                .passwordTextField(hint: "Confirm Password"),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 45,
                                width: w,
                                child: CommonButton(
                                  title: "Create my account",
                                  onT: () {
                                    PageNavigation().gotoSelectLocation(context);
                                  },
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "By signing up you agree to the",
                                    style: Style().textStyle(
                                        size: 13,
                                        w: FontWeight.w400,
                                        color: g8),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: "Terms and conditions ",
                                          style: Style().textStyle(
                                              size: 13,
                                              w: FontWeight.w500,
                                              color: primary),
                                          children: [
                                            TextSpan(
                                              text: "and ",
                                              style: Style().textStyle(
                                                  size: 13,
                                                  w: FontWeight.w400,
                                                  color: g8),
                                            ),
                                            TextSpan(
                                              text: "Privacy Policy",
                                              style: Style().textStyle(
                                                  size: 13,
                                                  w: FontWeight.w500,
                                                  color: primary),
                                            )
                                          ]))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Alraedy have an account? ",
                        style: Style()
                            .textStyle(size: 14, w: FontWeight.w400, color: g8),
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: Style().textStyle(
                                size: 14, w: FontWeight.w500, color: primary),
                          ),
                        ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
