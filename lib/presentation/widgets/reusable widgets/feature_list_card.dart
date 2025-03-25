import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_image_card.dart';

class FeatureListCard extends StatelessWidget {
  const FeatureListCard({super.key, required this.imgUrl, required this.title});

  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors().colorD65656,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 30.w),
        leading: FlutterImageCard(imageUrl: imgUrl, fit: BoxFit.contain),
        horizontalTitleGap: 8,
        isThreeLine: false,
        title: FlutterCustomText(
          textAlign: TextAlign.start,
          text: title,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
