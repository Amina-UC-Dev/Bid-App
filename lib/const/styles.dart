import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Style {
  textStyle({
    required double size,
    required FontWeight w,
    required Color color,
  }) {
    return TextStyle(
        fontSize: size,
        fontWeight: w,
        color: color
    );
  }

  underLineTextStyle({
    required double size,
    required FontWeight w,
    required Color color,
  }) {
    return TextStyle(
        fontSize: size,
        fontWeight: w,
        color: color,
      decoration: TextDecoration.underline
    );
  }
}
