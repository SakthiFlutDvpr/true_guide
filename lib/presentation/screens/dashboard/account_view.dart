import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/data/models/model_data.dart';
import 'package:true_guide/presentation/screens/dashboard/bloc/dashboard_bloc.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_svg_card.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 1.sh,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
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
                  alignment: Alignment.topCenter,

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
                            color: Colors.white,
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
              Padding(
                padding: EdgeInsets.all(12.r),
                child: IconButton(
                  onPressed: () {
                    context.read<DashboardBloc>().add(
                      DashboardIndexPopupEvent(),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 24.sp,

                    color: AppColors().color742B88,
                  ),
                ),
              ),
              Positioned(
                top: 138.h,
                left: 25.w,
                child: Container(
                  height: 140.h,
                  width: 310.w,
                  padding: EdgeInsets.all(20.r),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: AppColors().profileGradient,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:
                        accountProductsList.map((e) {
                          return Container(
                            height: 80.h,
                            width: 80.w,
                            // padding: EdgeInsets.all(8.r),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors().colorFFB790,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: FlutterSvgCard(
                                      imageUrl: e['image'],
                                      fit: BoxFit.contain,
                                      height: 24.h,
                                      width: 24.w,
                                    ),
                                  ),
                                ),

                                Container(
                                  height: 25.h,
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  child: FlutterCustomText(
                                    textAlign: TextAlign.center,
                                    text: e['title'],
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),
            ],
          ),
          context.verticalSpace(80.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
            child: Divider(color: Colors.black, thickness: 0.4),
          ),
          Expanded(
            child: Container(
              // padding: EdgeInsets.only(top: 80.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors().profileGradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.8],
                ),
              ),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                      vertical: 0,
                    ),

                    leading: FlutterSvgCard(
                      imageUrl: accountList[index]['image'],
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                    isThreeLine: false,
                    title: FlutterCustomText(
                      textAlign: TextAlign.start,
                      text: accountList[index]['title'],
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      size: 24.sp,
                      color: Colors.black,
                      weight: 50.sp,
                    ),
                  );
                },
                separatorBuilder:
                    (context, index) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 0,
                      ),
                      child: Divider(color: Colors.black, thickness: 0.4),
                    ),
                itemCount: accountList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
