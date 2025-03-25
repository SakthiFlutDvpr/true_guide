import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_colored_button.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_image_card.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_input_field.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 57.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterImageCard(imageUrl: AppImages().loginBanner),
              context.verticalSpace(10.h),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlutterCustomText(
                      text: 'Login',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    context.verticalSpace(10.h),
                    FlutterInputField(
                      filled: false,
                      inputType: TextInputType.emailAddress,
                      enableBorder: true,
                      hintText: 'Email',
                    ),
                    context.verticalSpace(15.h),
                    FlutterInputField(
                      filled: false,
                      inputType: TextInputType.text,
                      enableBorder: true,
                      hintText: 'Password',
                      obscure: true,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          tristate: true,
                          side: BorderSide(color: AppColors().color7C7C7C),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,

                          splashRadius: 0,
                        ),
                        FlutterCustomText(
                          text: 'Remember',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors().color7C7C7C,
                        ),
                        Spacer(),
                        FlutterTextButton(
                          onPresssed: () {},
                          child: FlutterCustomText(
                            text: 'Forgot Password ?',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors().color7C7C7C,
                          ),
                        ),
                      ],
                    ),
                    context.verticalSpace(10.h),
                    Row(
                      children: [
                        FlutterColoredButton(
                          onPresssed: () {},
                          isDisable: false,
                          text: 'LOGIN',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              context.verticalSpace(10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.h,
                        color: AppColors().colorAAA5A5,
                      ),
                    ),
                    context.horizontalSpace(8.w),
                    FlutterCustomText(
                      text: 'Or Continue With',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    context.horizontalSpace(8.w),
                    Expanded(
                      child: Container(
                        height: 1.h,
                        color: AppColors().colorAAA5A5,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterCustomText(
                    text: 'Login With  ',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  FlutterTextButton(
                    onPresssed: () {},
                    child: FlutterCustomText(
                      text: 'Mobile Number',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors().color0058D2,
                      decoration: TextDecoration.underline,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterCustomText(
                    text: 'New Register?  Please  ',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  FlutterTextButton(
                    onPresssed: () {},
                    child: FlutterCustomText(
                      text: 'Sign Up',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors().color3553BE,
                      decoration: TextDecoration.underline,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterCustomText(
                    text: 'T&C\'s',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    height: 1.25,
                    color: AppColors().color0B2646,
                  ),
                  context.horizontalSpace(8.w),
                  FlutterCustomText(
                    text: 'Privacy Policy',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    height: 1.25,
                    color: AppColors().color0B2646,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
