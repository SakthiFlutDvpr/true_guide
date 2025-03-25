import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 1.sh,
      child: Stack(
        children: [
          Container(
            height: 215.h,
            padding: EdgeInsets.all(20.r),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors().profileGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.r),
                bottomRight: Radius.circular(50.r),
              ),
            ),

            child: Container(
              alignment: Alignment.center,

              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors().color871A1A,
                          width: 1,
                        ),
                      ),
                      child: FlutterCustomText(
                        text: 'S',
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    context.horizontalSpace(10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            FlutterCustomText(
                              text: 'Smart Global Solution',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit_outlined,
                                size: 24.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            FlutterCustomText(
                              text: '1122333444',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            context.horizontalSpace(15.w),
                            Container(
                              width: 60.w,
                              height: 20.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors().color30AC4B,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: FlutterCustomText(
                                text: 'Active',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: FlutterCustomText(
                            text: 'View Full Profile',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors().color283BB9,
                            decoration: TextDecoration.underline,
                            height: 1.25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
