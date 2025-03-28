import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';

class FlutterInputField extends StatelessWidget {
  const FlutterInputField({
    super.key,
    this.controller,
    required this.filled,
    required this.enableBorder,
    this.hintText,
    this.validator,
    this.onSaved,
    this.inputType,
    this.focusNode,
    this.suffixIcon,
    this.onTap,
    this.maxLines,
    this.readOnly,
    this.verticalContentPadding,
    this.obscure,
    this.textStyle,
    this.fillColor,
    this.hintStyle,
    this.prefixIcon,
    this.horizontalPadding,
    this.errorStyle,
    this.textCapitalization,
    this.textAlign,
    this.cursorColor,
    this.autoFocus,
    this.maxLength,
    this.labelText,
  });
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? errorStyle;
  final TextInputType? inputType;
  final bool filled;
  final Color? fillColor;
  final int? maxLines;
  final bool enableBorder;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final bool? readOnly;
  final double? verticalContentPadding;
  final double? horizontalPadding;
  final bool? obscure;
  final TextCapitalization? textCapitalization;
  final TextAlign? textAlign;
  final Color? cursorColor;
  final bool? autoFocus;
  final int? maxLength;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      keyboardType: inputType,
      maxLines: maxLines ?? 1,
      maxLength: maxLength,

      controller: controller,
      focusNode: focusNode,
      validator: validator,
      onTap: onTap,
      readOnly: readOnly ?? false,
      obscureText: obscure ?? false,
      onSaved: onSaved,
      cursorColor: cursorColor ?? Colors.black,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      textAlign: textAlign ?? TextAlign.start,
      style:
          textStyle ??
          TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalContentPadding ?? 0,
          horizontal: horizontalPadding ?? 8.0,
        ),

        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 10.sp,
          color: Color(0xff616161),
          fontWeight: FontWeight.w500,
        ),

        hintText: hintText,
        hintStyle:
            hintStyle ??
            TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors().color828080,
              fontWeight: FontWeight.w500,
            ),
        counterText: '',

        border:
            enableBorder
                ? OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColors().color817979,
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        enabledBorder:
            enableBorder
                ? OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: AppColors().color817979,
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        focusedBorder:
            enableBorder
                ? OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xff742B88),
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        errorStyle:
            errorStyle ??
            TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
        errorBorder:
            enableBorder
                ? OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Color(0xffE54444),
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        fillColor: fillColor ?? Colors.transparent,
      ),
    );
  }
}
