import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/core/constants/app_images.dart';
import 'package:true_guide/core/extensions/spacing_extensions.dart';
import 'package:true_guide/routes/app_routes.dart';

import '../../../widgets/reusable widgets/flutter_colored_button.dart';
import '../../../widgets/reusable widgets/flutter_custom_text.dart';
import '../../../widgets/reusable widgets/flutter_image_card.dart';
import '../../../widgets/reusable widgets/flutter_input_field.dart';
import '../../../widgets/reusable widgets/flutter_svg_card.dart';
import '../../../widgets/reusable widgets/flutter_text_button.dart';

class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen({super.key});

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  List products = [
    AppImages().productOne,
    AppImages().productTwo,
    AppImages().productThree,
  ];

  List images = [AppImages().image22, AppImages().image23, AppImages().image25];

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

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
          text: 'Sri Vikasha Fields',
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
          padding: EdgeInsets.all(4.r),
          decoration: BoxDecoration(color: Color(0xffEBEAEA)),
          child: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      topRight: Radius.circular(8.r),
                    ),
                  ),
                  child: Container(
                    width: 1.sw,
                    height: 1.sh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.r),
                        topRight: Radius.circular(8.r),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FlutterSvgCard(
                                imageUrl: AppImages().forwardIcon,
                                height: 18.h,
                                width: 18.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 16.w,
                                right: 16.w,
                                top: 10.h,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),

                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FlutterSvgCard(
                                              imageUrl: AppImages().handGesture,
                                              fit: BoxFit.contain,
                                              width: 8.w,
                                              height: 8.h,
                                            ),
                                            context.horizontalSpace(4.w),
                                            FlutterCustomText(
                                              textAlign: TextAlign.center,
                                              text: 'Architecture',
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors().color1D1D1D,
                                            ),
                                          ],
                                        ),
                                        context.verticalSpace(2.h),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors().color1D1D1D,
                                              ),
                                              context.horizontalSpace(4.w),
                                              FlutterImageCard(
                                                imageUrl:
                                                    AppImages().checklistIcon,
                                              ),
                                            ],
                                          ),
                                          context.verticalSpace(1.h),
                                          FlutterCustomText(
                                            textAlign: TextAlign.center,
                                            text: '05 Years in Business',
                                            fontSize: 6.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors().color1D1D1D,
                                          ),
                                          context.verticalSpace(1.h),
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
                                                  'Real Estate Development, \nConstruction,Plotted Development.',

                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          context.verticalSpace(3.h),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.timer_outlined,
                                                color: Colors.grey,
                                                size: 15.sp,
                                              ),
                                              context.horizontalSpace(2.w),
                                              FlutterCustomText(
                                                textAlign: TextAlign.center,
                                                text: '09:00 A.M - 08:00 P.M',
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors().color1D1D1D,
                                              ),
                                            ],
                                          ),
                                          context.verticalSpace(2.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              FlutterSvgCard(
                                                imageUrl:
                                                    AppImages()
                                                        .locationFilledIcon,
                                                height: 16.h,
                                                width: 16.w,

                                                fit: BoxFit.cover,
                                              ),
                                              context.horizontalSpace(4.w),
                                              FlutterCustomText(
                                                textAlign: TextAlign.center,
                                                text: 'Coimbatore, Tamilnadu',
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors().color1D1D1D,
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
                          ],
                        ),
                        const Divider(),

                        TabBar(
                          controller: tabController,
                          unselectedLabelStyle: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          labelStyle: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          indicatorWeight: 2,

                          indicatorSize: TabBarIndicatorSize.tab,
                          labelPadding: EdgeInsets.zero,
                          padding: EdgeInsets.zero,

                          indicatorColor: AppColors().color742B88,
                          tabs: [
                            Tab(text: 'Our Services'),
                            Tab(text: 'Our Products'),
                            Tab(text: 'Photos'),
                            Tab(text: 'Contact Info'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,

                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(16.r),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        children:
                                            [
                                              'RealEstate Development',
                                              'Construction',
                                              'Plotted Development',
                                              'Interior Designs',
                                            ].map((e) {
                                              return Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      right: 6.w,
                                                    ),
                                                    width: 6.w,
                                                    height: 6.h,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  FlutterCustomText(
                                                    text: e,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ],
                                              );
                                            }).toList(),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.w,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterCustomText(
                                            text: 'Our Products',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          FlutterTextButton(
                                            onPresssed: () {},
                                            child: FlutterCustomText(
                                              text: 'View All',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors().color742B88,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                        right: 16.w,
                                        bottom: 8.h,
                                      ),
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            child: FlutterImageCard(
                                              imageUrl: products[index],
                                              height: 100.h,
                                              width: 100.w,
                                              fit: BoxFit.fill,
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (context, index) =>
                                                SizedBox(width: 8.w),
                                        itemCount: products.length,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.w,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterCustomText(
                                            text: 'Our Photos',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          FlutterTextButton(
                                            onPresssed: () {},
                                            child: FlutterCustomText(
                                              text: 'View All Photos',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors().color742B88,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                        right: 16.w,
                                        bottom: 8.h,
                                      ),
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            child: FlutterImageCard(
                                              imageUrl: images[index],
                                              height: 100.h,
                                              width: 100.w,
                                              fit: BoxFit.fill,
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (context, index) =>
                                                SizedBox(width: 8.w),
                                        itemCount: images.length,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.r),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FlutterCustomText(
                                            text: 'Contact Info',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            isThreeLine: false,
                                            leading: FlutterSvgCard(
                                              imageUrl:
                                                  AppImages()
                                                      .locationFilledIcon,
                                              width: 18.w,
                                              height: 18.h,
                                              fit: BoxFit.cover,
                                            ),
                                            title: FlutterCustomText(
                                              text:
                                                  '6/125, Poothottam, Ponnegoundenpudur(PO),',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            subtitle: FlutterCustomText(
                                              text:
                                                  'SS Kulam(via), Coimbatore-641107.',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          FlutterCustomText(
                                            text: 'Mail id and website Link :-',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.email_outlined,
                                                size: 24.sp,
                                                color: AppColors().color742B88,
                                              ),
                                              context.horizontalSpace(2.w),
                                              FlutterCustomText(
                                                text:
                                                    'info@srivishakhafields.com',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.language,
                                                size: 24.sp,
                                                color: AppColors().color742B88,
                                              ),
                                              context.horizontalSpace(2.w),
                                              FlutterCustomText(
                                                text:
                                                    'www.srivishakhafields.com',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.r),
                                      alignment: Alignment.centerLeft,

                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FlutterCustomText(
                                            text: 'Post Your Review',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          context.verticalSpace(4.h),
                                          FlutterInputField(
                                            filled: false,
                                            inputType:
                                                TextInputType.emailAddress,
                                            enableBorder: true,
                                            hintText:
                                                'Do you have any feedback for this client?',
                                            hintStyle: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff828080),
                                            ),
                                            maxLines: 3,
                                            verticalContentPadding: 8.h,
                                          ),
                                          context.verticalSpace(6.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 20.h,
                                                child: FlutterColoredButton(
                                                  onPresssed: () {},
                                                  isDisable: false,
                                                  text: 'Post Review',
                                                  textStyle: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  horPadding: 8.w,
                                                  vertPadding: 0,
                                                  borderRadius: 4.r,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(),
                              Container(),
                              Container(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 55.h,
                child: Row(
                  spacing: 10.w,
                  children: [
                    Expanded(
                      child: FlutterColoredButton(
                        onPresssed: () {
                          context.pushNamed(AppRoutes.contactScreen);
                        },
                        isDisable: false,
                        icon: Icon(Icons.send_outlined),
                        text: 'Send Enquiry',
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        vertPadding: 12.h,
                      ),
                    ),
                    Expanded(
                      child: FlutterColoredButton(
                        onPresssed: () {},
                        isDisable: false,
                        icon: Icon(Icons.call_outlined),
                        text: 'Call Now',
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        vertPadding: 12.h,
                      ),
                    ),
                    Expanded(
                      child: FlutterColoredButton(
                        onPresssed: () {},
                        isDisable: false,
                        icon: Icon(Icons.message_outlined),
                        text: 'Whatsapp',
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        vertPadding: 12.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
