import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';

class FlutterColoredButton extends StatelessWidget {
  const FlutterColoredButton({
    super.key,
    required this.onPresssed,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
    this.shape,
    required this.isDisable,
    required this.text,
    this.icon,
    this.iconAlignment,
    this.textStyle,
    this.vertPadding,
    this.horPadding,
  });

  final Function() onPresssed;
  final bool isDisable;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? borderRadius;
  final OutlinedBorder? shape;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final TextStyle? textStyle;
  final double? vertPadding;
  final double? horPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: isDisable ? null : onPresssed,

      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: vertPadding ?? 10.h,
          horizontal: horPadding ?? 0,
        ),
        overlayColor: AppColors().color742B88,
        textStyle:
            textStyle ?? TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        backgroundColor:
            isDisable
                ? Colors.grey
                : backgroundColor ?? AppColors().color742B88,
        foregroundColor:
            isDisable ? Colors.white : foregroundColor ?? Colors.white,
        shape:
            shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            ),
      ),
      label: Text(
        text,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),

      icon: icon,
      iconAlignment: iconAlignment,
    );
  }
}
