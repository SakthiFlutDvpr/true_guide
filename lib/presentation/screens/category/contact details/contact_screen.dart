import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/presentation/screens/category/contact%20details/details%20layouts/business_layout_two.dart'
    show BusinessLayoutTwo;
import 'package:true_guide/presentation/screens/category/contact%20details/details%20layouts/personal_layout.dart';

import '../../../widgets/reusable widgets/flutter_custom_text.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 24.sp,
              color: AppColors().color742B88,
            ),
          ),
          title: FlutterCustomText(
            text: 'Contact Details',
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors().color742B88,
          ),
          centerTitle: false,
        ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TabBar(
                  unselectedLabelStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  dividerHeight: 0,

                  splashBorderRadius: BorderRadius.circular(8.r),
                  indicatorPadding: EdgeInsets.zero,

                  padding: EdgeInsets.zero,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Color(0xffCACACA),
                  indicator: BoxDecoration(
                    color: Color(0xffCACACA),

                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  tabAlignment: TabAlignment.fill,
                  tabs: [
                    Tab(text: 'Personal Details'),
                    Tab(text: 'Business Details'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [PersonalLayout(), BusinessLayoutTwo()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
