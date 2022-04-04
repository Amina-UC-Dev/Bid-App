import 'package:bid_app/provider/provider.dart';
import 'package:bid_app/screens/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: BidProvider()),
      ],
      child: MaterialApp(
        title: 'Bid App',
        color: primary,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primary,
          scaffoldBackgroundColor: white,
          cursorColor: primary,
          primarySwatch: Colors.purple,
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}

