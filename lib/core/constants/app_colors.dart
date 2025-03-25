import 'package:flutter/material.dart';

class AppColors {
  static AppColors instance = AppColors._internal();

  AppColors._internal();

  factory AppColors() {
    return instance;
  }

  List<Color> backGroundGradient = [Color(0xffFFFFFF), Color(0xffFF8181)];

  Color get blackColor => Color(0xff000000);

  Color get color7C7C7C => Color(0xff7C7C7C);

  Color get color817979 => Color(0xff817979);

  Color get color742B88 => Color(0xff742B88);

  Color get colorAAA5A5 => Color(0xffAAA5A5);

  Color get color0058D2 => Color(0xff0058D2);

  Color get color3553BE => Color(0xff3553BE);

  Color get color0B2646 => Color(0xff0B2646);

  Color get color494848 => Color(0xff494848);

  Color get colorSF1 => Color(0xffCB7272);

  Color get colorSF2 => Color(0xffE58D2F);

  Color get colorSF3 => Color(0xff41A3A4);
}
