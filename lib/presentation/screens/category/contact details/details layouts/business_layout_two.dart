import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/drop_down_butto.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_text_button.dart';

import '../../../../widgets/reusable widgets/flutter_colored_button.dart';
import '../../../../widgets/reusable widgets/flutter_custom_text.dart';
import '../../../../widgets/reusable widgets/flutter_input_field.dart';

class BusinessLayoutTwo extends StatelessWidget {
  BusinessLayoutTwo({super.key});

  final List<Map<String, String>> countries = [
    {"flag": "🇮🇳", "code": "+91", "name": "India"},
    {"flag": "🇺🇸", "code": "+1", "name": "USA"},
    {"flag": "🇬🇧", "code": "+44", "name": "UK"},
    {"flag": "🇨🇦", "code": "+1", "name": "Canada"},
    {"flag": "🇦🇺", "code": "+61", "name": "Australia"},
  ];

  final List character = ['Mr.', 'Mrs.', 'Miss.'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.h,
          children: [
            context.verticalSpace(5.h),
            FlutterCustomText(
              text: 'Add Contact Detail',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),

            Row(
              spacing: 8.w,
              children: [
                CustomDropDownButton(data: character, isSingleText: true),

                Expanded(
                  child: FlutterInputField(
                    filled: false,
                    inputType: TextInputType.text,
                    enableBorder: true,
                    hintText: 'Enter Your Name',
                    labelText: 'Contact Person Name',
                  ),
                ),
              ],
            ),
            Row(
              spacing: 8.w,
              children: [
                CustomDropDownButton(data: countries, isSingleText: false),
                Expanded(
                  child: FlutterInputField(
                    filled: false,
                    inputType: TextInputType.text,
                    enableBorder: true,
                    hintText: 'Enter  Mobile Number',
                  ),
                ),
              ],
            ),

            FlutterTextButton(
              onPresssed: () {},
              child: FlutterCustomText(
                text: '+ Add Another Mobile Number',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().color0A26B2,
                decoration: TextDecoration.underline,
                height: 1.5,
              ),
            ),
            Row(
              spacing: 8.w,
              children: [
                CustomDropDownButton(data: countries, isSingleText: false),
                Expanded(
                  child: FlutterInputField(
                    filled: false,
                    inputType: TextInputType.text,
                    enableBorder: true,
                    hintText: 'Enter  Mobile Number',
                    labelText: 'WhatsApp Number',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                  tristate: true,
                  side: BorderSide(color: AppColors().color7C7C7C),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                  splashRadius: 0,
                ),
                FlutterCustomText(
                  text: 'Same as Mobile Number',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().color0A26B2,
                ),
              ],
            ),

            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Your Email Address',
            ),
            FlutterTextButton(
              onPresssed: () {},
              child: FlutterCustomText(
                text: '+ Add Another Email Address',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors().color0A26B2,
                decoration: TextDecoration.underline,
                height: 1.5,
              ),
            ),
            FlutterCustomText(
              text: 'Add Business Timing Detail',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),

            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Landmark',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Pincode',
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FlutterInputField(
                    filled: false,
                    inputType: TextInputType.text,
                    enableBorder: true,
                    hintText: 'City',
                  ),
                ),
                context.horizontalSpace(25.w),
                Expanded(
                  child: FlutterInputField(
                    filled: false,
                    inputType: TextInputType.text,
                    enableBorder: true,
                    hintText: 'State',
                  ),
                ),
              ],
            ),
            context.verticalSpace(5.h),
            Row(
              children: [
                Expanded(
                  child: FlutterColoredButton(
                    onPresssed: () {},
                    isDisable: false,
                    text: 'Save Detail',
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    vertPadding: 0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
