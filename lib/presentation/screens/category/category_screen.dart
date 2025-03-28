import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/category_visiting_card.dart';
import 'package:true_guide/routes/app_routes.dart';

import '../../widgets/reusable widgets/flutter_custom_text.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24.sp,
            color: AppColors().color742B88,
          ),
        ),
        title: FlutterCustomText(
          text: 'Architecture',
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors().color742B88,
        ),
        centerTitle: false,

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 24.sp,

              color: AppColors().color742B88,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors().categoryBackgroundTwo,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 60.h,
                color: AppColors().colorEDEDED,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      <String>[
                        'Sort By',
                        'Location',
                        'Rating',
                        'Business Type',
                      ].map((e) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(8.r),
                          child: FlutterCustomText(
                            text: e,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      }).toList(),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.h,
                    horizontal: 16.w,
                  ),

                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(AppRoutes.categroyDetailScreen);
                        },
                        child: CategoryVisitingCard(),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 5.h),
                    itemCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
