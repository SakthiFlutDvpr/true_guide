import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_colored_button.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_image_card.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_svg_card.dart';

import 'flutter_custom_text.dart';

class CategoryVisitingCard extends StatelessWidget {
  const CategoryVisitingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Card(
          elevation: 2,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 12.w),

                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterImageCard(
                        imageUrl: AppImages().svfLogo,
                        height: 75.h,
                        width: 75.w,
                        fit: BoxFit.contain,
                      ),
                      FlutterCustomText(
                        textAlign: TextAlign.center,
                        text: 'ASHOK.K.S',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors().color7D2699,
                      ),
                      context.verticalSpace(2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterSvgCard(imageUrl: AppImages().handGesture),
                          context.horizontalSpace(4.w),
                          FlutterCustomText(
                            textAlign: TextAlign.center,
                            text: 'Architecture',
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors().color1D1D1D,
                          ),
                        ],
                      ),
                      context.verticalSpace(2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterSvgCard(
                            imageUrl: AppImages().locationFilledIcon,
                          ),
                          context.horizontalSpace(4.w),
                          FlutterCustomText(
                            textAlign: TextAlign.center,
                            text: 'Coimbatore, Tamilnadu',
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors().color1D1D1D,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterCustomText(
                          textAlign: TextAlign.center,
                          text: 'SRI VISHAKHA FIELDS',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors().color7D2699,
                        ),
                        context.verticalSpace(4.h),
                        Row(
                          children: [
                            FlutterCustomText(
                              textAlign: TextAlign.center,
                              text: 'Verified Listing',
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors().color1D1D1D,
                            ),
                            context.horizontalSpace(4.w),
                            FlutterImageCard(
                              imageUrl: AppImages().checklistIcon,
                            ),
                          ],
                        ),
                        context.verticalSpace(2.h),
                        FlutterCustomText(
                          textAlign: TextAlign.center,
                          text: '05 Years in Business',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors().color1D1D1D,
                        ),
                        context.verticalSpace(2.h),
                        FlutterCustomText(
                          textAlign: TextAlign.center,
                          text: 'Property Serviced',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors().color7D2699,
                        ),
                        context.verticalSpace(2.h),

                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text:
                                'Real Estate Development, Construction, \nPlotted Development ',

                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),

                            children: [
                              TextSpan(
                                text: 'more...',
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors().color742B88,
                                ),
                              ),
                            ],
                          ),
                        ),
                        context.verticalSpace(10.h),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: 20.h,
                              child: FlutterColoredButton(
                                onPresssed: () {},
                                isDisable: false,
                                text: 'Call Now',
                                textStyle: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                horPadding: 8.w,
                                vertPadding: 0,
                              ),
                            ),
                            context.horizontalSpace(25.w),
                            SizedBox(
                              height: 20.h,
                              child: FlutterColoredButton(
                                onPresssed: () {},
                                isDisable: false,
                                text: 'Whatsapp',
                                textStyle: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                horPadding: 8.w,
                                vertPadding: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10.h,
          right: 15.w,
          child: IconButton(
            onPressed: () {},
            icon: FlutterSvgCard(
              imageUrl: AppImages().forwardIcon,
              height: 18.h,
              width: 18.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
