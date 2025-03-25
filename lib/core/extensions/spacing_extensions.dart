import 'package:flutter/material.dart';

extension SpacingExtension on BuildContext {
  SizedBox verticalSpace(double height) => SizedBox(height: height);

  SizedBox horizontalSpace(double width) => SizedBox(width: width);
}
