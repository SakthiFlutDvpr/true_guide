import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/data/models/model_data.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/categories_card.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_colored_button.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';

import '../../widgets/reusable widgets/flutter_image_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.verticalSpace(20.h),
            Container(
              height: 40.h,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 14.w),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: AppColors().color742B88),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 8.h,
                        ),
                        border: InputBorder.none,
                        hintText: 'search here',
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors().color494848,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24.sp,
                          color: AppColors().color742B88,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 45.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors().color742B88,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
                    ),
                    child: FlutterCustomText(
                      text: 'Search',
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            context.verticalSpace(15.h),
            FlutterCustomText(
              text: 'Top Categories',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            context.verticalSpace(10.h),

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 8.w,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                return CategoriesCard(
                  imgUrl: categories[index]['image'],
                  title: categories[index]['title'],
                  direction: Axis.vertical,
                  verticalPadding: 8.h,
                );
              },
              itemCount: categories.length,
            ),
            context.verticalSpace(15.h),
            FlutterCustomText(
              text: 'Special Features',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            context.verticalSpace(10.h),
            SizedBox(
              height: 65.h,

              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoriesCard(
                    height: 65.h,
                    width: 150.w,
                    imgUrl: specialFeatures[index]['image'],
                    title: specialFeatures[index]['title'],
                    backgroundColor: specialFeatures[index]['color'],
                    direction: Axis.horizontal,
                    horizontalPadding: 8.w,
                    textColor: Colors.white,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 2.w),
                itemCount: specialFeatures.length,
              ),
            ),
            context.verticalSpace(8.h),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 65.h,
                decoration: BoxDecoration(
                  color: Color(0xffAD4545),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: FlutterCustomText(
                        textAlign: TextAlign.start,
                        text:
                            'Register Your Business Today It\'s Quick and Easy!',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    FlutterColoredButton(
                      onPresssed: () {},
                      isDisable: false,
                      text: 'Register Now',
                      vertPadding: 0,
                    ),
                  ],
                ),
              ),
            ),
            context.verticalSpace(8.h),

            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  image: AssetImage(AppImages().volumeImage),
                  fit: BoxFit.fill,
                ),
              ),
              child: SizedBox(
                width: 0.5.sw,
                child: FlutterCustomText(
                  textAlign: TextAlign.start,
                  text: 'Increase leads and expand your reach effortlessly!',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            context.verticalSpace(5.h),
            FlutterCustomText(
              text: 'Explore Services',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            context.verticalSpace(10.h),
            SizedBox(
              height: 150.h,

              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 320.w,
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: Color(0xff81BF5B),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FlutterCustomText(
                              textAlign: TextAlign.start,
                              text:
                                  'Are you an Architect? Showcase \nYour Expertise on True Guide!',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                            context.verticalSpace(20.h),
                            FlutterColoredButton(
                              onPresssed: () {},
                              isDisable: false,
                              text: 'Join as an Architect Now',
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,

                              horPadding: 15.w,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterImageCard(
                              imageUrl: AppImages().houseImage,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 2.w),
                itemCount: specialFeatures.length,
              ),
            ),
            context.verticalSpace(10.h),
          ],
        ),
      ),
    );
  }
}
