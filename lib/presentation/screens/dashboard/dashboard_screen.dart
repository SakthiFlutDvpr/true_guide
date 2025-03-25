import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/presentation/screens/dashboard/home_view.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_svg_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, size: 24.sp),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterCustomText(
              text: 'Hello...',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors().color742B88,
            ),
            FlutterCustomText(
              text: 'Smart Global',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors().color742B88,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.location_on_outlined, size: 24.sp),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, size: 24.sp),
          ),
        ],
        foregroundColor: AppColors().color742B88,
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors().backGroundGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: IndexedStack(
          index: 0,
          children: [HomeView(), Container(), Container(), Container()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //  onTap: controller.changeNavBarIndex,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors().blackColor,
          fontFamily: 'InriaSans',
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors().blackColor,
          fontFamily: 'InriaSans',
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColors().color742B88,
        unselectedItemColor: AppColors().blackColor,
        items: [
          BottomNavigationBarItem(
            icon: FlutterSvgCard(
              imageUrl: AppImages().homeIcon,
              height: 24.h,
              width: 24.w,
            ),
            activeIcon: FlutterSvgCard(
              imageUrl: AppImages().activeHomeIcon,
              height: 24.h,
              width: 24.w,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FlutterSvgCard(
              imageUrl: AppImages().categoryIcon,
              width: 24.w,
              height: 24.h,
            ),
            activeIcon: FlutterSvgCard(
              imageUrl: AppImages().activeCategoryIcon,
              height: 24.h,
              width: 24.w,
            ),
            label: 'My Chits',
          ),
          BottomNavigationBarItem(
            tooltip: 'Home Icon',
            icon: FlutterSvgCard(
              imageUrl: AppImages().featureIcon,
              height: 24.h,
              width: 24.w,
            ),
            activeIcon: FlutterSvgCard(
              imageUrl: AppImages().activeFeatureIcon,
              height: 24.h,
              width: 24.w,
            ),
            label: 'Live Auction',
          ),
          BottomNavigationBarItem(
            icon: FlutterSvgCard(
              imageUrl: AppImages().accountIcon,
              height: 24.h,
              width: 24.w,
            ),
            activeIcon: FlutterSvgCard(
              imageUrl: AppImages().activeAccountIcon,
              height: 24.h,
              width: 24.w,
            ),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
