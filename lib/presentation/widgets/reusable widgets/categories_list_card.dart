import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_image_card.dart';

class CategoriesListCard extends StatelessWidget {
  const CategoriesListCard({
    super.key,
    required this.imgUrl,
    required this.title,
  });

  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1.5, color: Colors.black),
      ),
      child: ListTile(
        leading: FlutterImageCard(imageUrl: imgUrl, fit: BoxFit.contain),
        isThreeLine: false,
        title: FlutterCustomText(
          textAlign: TextAlign.start,
          text: title,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 24.sp),
      ),
    );
  }
}
