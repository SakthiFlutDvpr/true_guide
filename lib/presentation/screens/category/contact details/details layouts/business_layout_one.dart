import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/dashed_container.dart';

import '../../../../widgets/reusable widgets/flutter_colored_button.dart';
import '../../../../widgets/reusable widgets/flutter_custom_text.dart';
import '../../../../widgets/reusable widgets/flutter_input_field.dart';

class BusinessLayoutOne extends StatelessWidget {
  const BusinessLayoutOne({super.key});

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
              text: 'Logo (or) Company Photo',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            Row(
              children: [
                Expanded(
                  child: DashedContainer(
                    child: Column(
                      spacing: 4.h,
                      children: [
                        FlutterCustomText(
                          text: 'Drag and drop your image here',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        Icon(Icons.add_photo_alternate_outlined, size: 28.sp),
                        FlutterCustomText(
                          text: 'Maximum 5 MB file size',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 25.h,
                          child: FlutterColoredButton(
                            onPresssed: () {},
                            isDisable: false,

                            text: 'Upload Image',
                            textStyle: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            vertPadding: 0,
                            horPadding: 8.w,
                            borderRadius: 8.r,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Your Business Name',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Block/ Building Name',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Street Area',
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
