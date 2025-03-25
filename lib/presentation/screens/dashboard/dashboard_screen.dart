import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/presentation/screens/dashboard/account_view.dart';
import 'package:true_guide/presentation/screens/dashboard/bloc/dashboard_bloc.dart';
import 'package:true_guide/presentation/screens/dashboard/category_view.dart';
import 'package:true_guide/presentation/screens/dashboard/feature_view.dart';
import 'package:true_guide/presentation/screens/dashboard/home_view.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_svg_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          appBar:
              state.index == 0
                  ? AppBar(
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
                  )
                  : state.index != 3
                  ? AppBar(
                    leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        size: 24.sp,
                        color: AppColors().color742B88,
                      ),
                    ),
                    title: FlutterCustomText(
                      text:
                          state.index == 1
                              ? 'Categories'
                              : state.index == 2
                              ? 'Features'
                              : '',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          size: 24.sp,
                          color: AppColors().color742B88,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FlutterSvgCard(
                          imageUrl: AppImages().customerIcon,
                        ),
                      ),
                    ],
                  )
                  : null,
          extendBody: state.index == 3,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors().backGroundGradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: IndexedStack(
                index: 3,
                children: [
                  HomeView(),
                  CategoryView(),
                  FeatureView(),
                  AccountView(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              context.read<DashboardBloc>().add(
                DashboardIndexUpdateEvent(index: index),
              );
            },
            currentIndex: state.index,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().blackColor,
              fontFamily: 'Lato',
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().blackColor,
              fontFamily: 'Lato',
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
                label: 'Category',
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
                label: 'Features',
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
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
