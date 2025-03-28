import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/dashed_container.dart';

import '../../../../widgets/reusable widgets/flutter_colored_button.dart';
import '../../../../widgets/reusable widgets/flutter_custom_text.dart';
import '../../../../widgets/reusable widgets/flutter_input_field.dart';

class PersonalLayout extends StatelessWidget {
  const PersonalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.h,
          children: [
            context.verticalSpace(5.h),
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
              hintText: 'Enter Your First Name',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Your Last Name',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Your Email Address',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Your Mobile Number',
            ),
            FlutterInputField(
              filled: false,
              inputType: TextInputType.text,
              enableBorder: true,
              hintText: 'Enter Your Address Here...',
              maxLines: 4,
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
