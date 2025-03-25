import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_custom_text.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/flutter_image_card.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.imgUrl,
    required this.title,
    this.direction,
    this.textColor,
    this.backgroundColor,
    this.height,
    this.borderRadius,
    this.elevation,
    this.width,
    this.verticalPadding,
    this.horizontalPadding,
  });

  final String imgUrl;
  final String title;
  final Axis? direction;
  final Color? textColor;
  final Color? backgroundColor;
  final double? height;
  final BorderRadius? borderRadius;
  final double? elevation;
  final double? width;
  final double? verticalPadding;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 2,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 0,
          horizontal: horizontalPadding ?? 0,
        ),

        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(8.r),
        ),
        child:
            direction == Axis.vertical
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterImageCard(imageUrl: imgUrl, fit: BoxFit.contain),

                    Flexible(
                      child: FlutterCustomText(
                        textAlign: TextAlign.center,
                        text: title,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ],
                )
                : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Flexible(
                      child: FlutterCustomText(
                        textAlign: TextAlign.start,
                        text: title,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    FlutterImageCard(imageUrl: imgUrl, fit: BoxFit.contain),
                  ],
                ),
      ),
    );
  }
}
