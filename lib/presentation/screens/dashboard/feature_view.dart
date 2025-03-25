import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/data/models/model_data.dart';

import '../../widgets/reusable widgets/feature_list_card.dart';
import '../../widgets/reusable widgets/flutter_custom_text.dart';

class FeatureView extends StatelessWidget {
  const FeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
              child: FlutterCustomText(
                textAlign: TextAlign.start,
                text: 'List Of Features',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return FeatureListCard(
                    imgUrl: featuresList[index]['image'],
                    title: featuresList[index]['title'],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemCount: featuresList.length,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: FlutterCustomText(
                textAlign: TextAlign.start,
                text: 'Testimonal',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            context.verticalSpace(10.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: AppColors().color8F8F8F),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        padding: EdgeInsets.all(5.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors().color27B0D2,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            color: AppColors().color27B0D2,
                            size: 24.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 165.w,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              right: 5.w,
                              bottom: -20.h,
                              child: Container(
                                width: 120.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppImages().cementParam),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.w,
                                  vertical: 4.h,
                                ),
                                child: Center(
                                  child: RatingStars(
                                    starCount: 4,
                                    starColor: Colors.yellow,
                                    starOffColor: Colors.orange,
                                    starSize: 10.r,
                                    valueLabelPadding: EdgeInsets.zero,
                                    valueLabelVisibility: false,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImages().blueParam),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  context.verticalSpace(20.h),
                  FlutterCustomText(
                    text:
                        '02 Review\n“I had a great experience with srivishakhafields. They completed my home renovation on time and exceeded my expectations. Highly professional and transparent in their pricing!”\nCategory: Builders\nDate: December 18, 2024',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
